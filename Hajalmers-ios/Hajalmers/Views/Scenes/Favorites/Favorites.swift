import SwiftUI

struct Favorites: View {
    @EnvironmentObject var modelData: ModelData
    
    @Environment(\.managedObjectContext) var context
    
    @FetchRequest(
        entity: Liked.entity(),
        sortDescriptors: [ NSSortDescriptor(keyPath: \Liked.isFavorite, ascending: false) ])
    
    var menus: FetchedResults<Liked>
    
    @State private var isOnlyFavorite: Bool = true
    @State private var showFavoritesOnly = true
    
    var filteredMenus: [Menu] {
        modelData.menus.filter{menu in
            
            (!showFavoritesOnly || menu.isFavorite)
            
        }}
    
    
    var body: some View {
        List {Toggle(isOn: $showFavoritesOnly)
                {Text("Favorites only")}
                .toggleStyle(SwitchToggleStyle(tint: Color("DeepRed")))
                .foregroundColor(Color("DeepRed"))
                
                ForEach(filteredMenus) { menu in
                    NavigationLink(destination: MenuDetail(menu: menu)) {
                        MenuRow(menu: menu)
                    }}}}}

struct Favorites_Previews: PreviewProvider {
    static var previews: some View {
        Favorites()
            .environmentObject(ModelData())
    }}
