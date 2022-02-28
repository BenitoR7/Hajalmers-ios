
import Foundation
import SwiftUI

struct Header : View {
    
var body : some View{
    
Image("background")
        .resizable()
        .aspectRatio( contentMode: .fill)


    
    VStack (alignment: .leading){


VStack{
Text("Hajalmer's Seafood + Steaks")
    .font(Font.custom("abraham", size: 26))
    .foregroundColor(Color("DeepRed"))
    

Text("607 N Access Rd Longview, TX 75602")
}
.padding()
}
    Spacer(minLength: 5)
    Text("Hours of Operation:")
        .fontWeight(.bold)}}




struct Header_Previews: PreviewProvider {
    static var previews: some View {
 
            HomeMenu()
       .previewDevice(PreviewDevice(rawValue: "iPhone 12 mini"))
        .previewDisplayName("iPhone 12 Mini")
         }}
    
