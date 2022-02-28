
import SwiftUI
import CoreData

struct MenuDetail: View {
    @Environment(\.managedObjectContext) var managedObjectContext
    
    @EnvironmentObject var modelData: ModelData
    var menu: Menu

    var menuIndex: Int {
        modelData.menus.firstIndex(where: { $0.id == menu.id })!
    }

    var body: some View {
        ScrollView {
           
            RectangleImage(image: menu.image)
                .offset(y: -10)
                .padding()
                .padding(.bottom, -10)
                
            VStack() {
                HStack {
                    Text(menu.name)
                        .font(Font.custom("Abbasy", size:16))
                    
                    Button(action: {
                        self.modelData.menus[self.menuIndex].isFavorite.toggle()
                        dump(self.modelData.menus[self.menuIndex].isFavorite)      
                        let toggle =  self.modelData.menus[self.menuIndex].isFavorite
                        let defaults = UserDefaults.standard
                        defaults.set(String(toggle), forKey: self.modelData.menus[self.menuIndex].name)
                        defaults.synchronize()
                    }) {
                        if self.modelData.menus[self.menuIndex].isFavorite {
        Image(systemName: "heart.fill")
            .foregroundColor(Color("DeepRed"))
                        } else {
                            
        Image(systemName: "heart")
            .foregroundColor(Color.gray)
                        }}}
                .padding()
                
                HStack {
                    Text(menu.price)
                        .foregroundColor(Color("DeepRed"))
                    Spacer()
                    
                     Text(menu.description)}
                     .font(Font.custom("Abbasy", size:16))
                     .foregroundColor(.secondary)}
           .padding()}
            .padding()
        
        .navigationTitle(menu.name)
        .navigationBarTitleDisplayMode(.inline)
    }}

