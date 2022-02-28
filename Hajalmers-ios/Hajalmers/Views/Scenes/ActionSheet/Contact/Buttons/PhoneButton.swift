
import SwiftUI


struct PhoneButton: View {

    var phoneNumber = "903-983-3848"

    var body: some View {
        VStack {
            Button(action: {
                let phone = "tel://"
                let phoneNumberformatted = phone + phoneNumber
                guard let url = URL(string: phoneNumberformatted) else { return }
                UIApplication.shared.open(url)
               }){
            MenuItem(icon: "phone.fill")
            .frame(width: 30, height: 30)
            .padding()
            .shadow(color: .gray, radius: 0.2, x: 1, y: 1)
            .transition(.move(edge: .trailing))
                   
            }  }}}
