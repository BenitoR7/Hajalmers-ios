
import SwiftUI




struct DirectionsButton: View {
    @State private var showingSheet = false

    var body: some View {
        VStack {
            Button(action: {
                showingSheet = true
            }) {
                
           
                MenuItem(icon: "location.fill")
                .imageScale(.large)
            .foregroundColor(Color(#colorLiteral(red: 0.6156862745, green: 0.2980392157, blue: 0.2745098039, alpha: 1)))                        .padding()
            
            }
        }
        .actionSheet(isPresented: $showingSheet) {
            let latitude = 32.447640
            let longitude = -94.718480

            let appleURL = "http://maps.apple.com/?daddr=\(latitude),\(longitude)"
            let googleURL = "comgooglemaps://?daddr=\(latitude),\(longitude)&directionsmode=driving"
            let wazeURL = "waze://?ll=\(latitude),\(longitude)&navigate=false"

            let googleItem = ("Google Map", URL(string:googleURL)!)
            let wazeItem = ("Waze", URL(string:wazeURL)!)
            var installedNavigationApps = [("Apple Maps", URL(string:appleURL)!)]

            if UIApplication.shared.canOpenURL(googleItem.1) {
                installedNavigationApps.append(googleItem)
            }

            if UIApplication.shared.canOpenURL(wazeItem.1) {
                installedNavigationApps.append(wazeItem)
            }
            
            var buttons: [ActionSheet.Button] = []
            for app in installedNavigationApps {
                let button: ActionSheet.Button = .default(Text(app.0)) {
                    UIApplication.shared.open(app.1, options: [:], completionHandler: nil)
                }
                buttons.append(button)
            }
            let cancel: ActionSheet.Button = .cancel()
            buttons.append(cancel)
            
            return ActionSheet(title: Text(""), message: Text("Select app..."), buttons: buttons)
        }
    }
}
