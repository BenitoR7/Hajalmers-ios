
import Foundation
import SwiftUI
import Combine



final class ModelData: ObservableObject {
    @Published var menus: [Menu] = load("hajalmers.json")
    @Published var showFavoritesOnly = false
    @Published var isFavorite = [Menu]()
    
    
    
    init() {
           takeUrl()
       }
    func takeUrl() {
        let url = Bundle.main.url(forResource: "hajalmers", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        menus = try! JSONDecoder().decode([Menu].self, from: data)
        let decodedData = try! JSONDecoder().decode([Menu].self, from: data)
        DispatchQueue.main.async {
            self.menus = decodedData
            for i in 0..<self.menus.count {

                
                if UserDefaults.standard.string (forKey:  self.menus[i].name) != nil {
                    
                    self.menus[i].isFavorite =  Bool (UserDefaults.standard.string (forKey: self.menus[i].name) ?? "false")!
                }}}}
    
    var categories: [String: [Menu]] {
        Dictionary(
            grouping: menus,
            by: { $0.category.rawValue }
        )}}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")}

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")}

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }}



