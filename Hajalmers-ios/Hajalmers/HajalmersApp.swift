
import SwiftUI

@main
struct HajalmersApp: App {
   
    @StateObject private var modelData = ModelData()
    
    
    
    
    let persistenceController = PersistenceController.shared


    var body: some Scene {
        WindowGroup {
            HomeMenu()
                .environmentObject(modelData)

                .environment(\.managedObjectContext, persistenceController.container.viewContext)
            
        }
    }
}


struct NavigationBarModifier: ViewModifier {
        
    var backgroundColor: UIColor?
    init( backgroundColor: UIColor?) {
        self.backgroundColor = backgroundColor
        let coloredAppearance = UINavigationBarAppearance()

        coloredAppearance.configureWithTransparentBackground()
        coloredAppearance.backgroundColor = #colorLiteral(red: 0.6156862745, green: 0.2980392157, blue: 0.2745098039, alpha: 1)
        coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().compactAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
        UINavigationBar.appearance().tintColor = .black
     
             
               }
    
    func body(content: Content) -> some View {
        ZStack{
            content
            VStack {
                GeometryReader { geometry in
                    Color(self.backgroundColor ?? .black)
                        .frame(height: geometry.safeAreaInsets.top)
                        .edgesIgnoringSafeArea(.top)
                    Spacer()
                }
            }
        }
    }
}



extension View {
 
    func navigationBarColor(_ backgroundColor: UIColor?) -> some View {
        self.modifier(NavigationBarModifier(backgroundColor: backgroundColor))
    }

}
