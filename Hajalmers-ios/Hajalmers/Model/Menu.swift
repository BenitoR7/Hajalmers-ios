
import Foundation
import SwiftUI
import CoreData

struct Menu: Hashable, Codable, Identifiable {
    
   
    
    private var imageName: String
    var image: Image {
        Image(imageName)}
    
    var id: Int
    var name: String
    var price: String
    var description: String
    var isFavorite: Bool


    var category: Category
    enum Category: String, CaseIterable, Codable {
        case soup = "Soup & Gumbo"
        case salads = "Salads"
        case desserts = "Desserts"
        case entrees = "Entrees"
        case steaks = "Steaks"
        case kids = "Kids"
        case drinks = "Drinks"
        case appetizers = "Appetizers"
        case sides = "Sides"
        
    }

}

