import SwiftUI

struct TabViewColor: View {
   
    init()
    {
        UITabBar.appearance().isTranslucent = false
        UITabBar.appearance().backgroundColor = UIColor(#colorLiteral(red: 0.6156862745, green: 0.2980392157, blue: 0.2745098039, alpha: 1));
        UITabBar.appearance().barTintColor =  UIColor(#colorLiteral(red: 0.6156862745, green: 0.2980392157, blue: 0.2745098039, alpha: 1));}
    
    @State private var selection: Tab = .featured
    enum Tab {
        case featured
        case list}

    var body: some View {
        ZStack{
        TabView(selection: $selection) {
            ImageMenu()
                .tabItem {
                    Label("Featured", systemImage: "list.bullet.rectangle")}
                .tag(Tab.featured)

            Favorites()
                .tabItem {
                    Label("Liked", systemImage: "heart.fill")}
                .tag(Tab.list)}
        .background(Color.black)
        }}}


struct TabBarViewPreview: PreviewProvider {
    static var previews: some View {
        TabViewColor()
            .environmentObject(ModelData())
    }}



