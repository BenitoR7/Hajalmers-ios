
import SwiftUI

struct MenuButtons : View {
    
var body : some View{
    
    HStack(spacing: 25){
    Button(action: {print("PDF Menu")}, label: {NavigationLink(destination: PDFMenu())
    {HStack
        {Image( "menu_button")
                        .resizable()
                        .frame(width: 29, height: 20)
                     Text("PDF Menu")
                    }.padding()
                    .frame(maxHeight: .infinity) }})
            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            .background(Capsule() )
            .foregroundColor(Color(#colorLiteral(red: 0.6156862745, green: 0.2980392157, blue: 0.2745098039, alpha: 1)))
     
            Button(action: {
                print("Picture Menu")
            }, label: {
                NavigationLink(destination: TabViewColor()) {
    
        HStack{
            Image( "ChickenFriedSteak")
                .resizable()
                .frame(width: 29, height: 20)
            Text("Picture Menu")
                .frame(maxHeight: .infinity) }
                    .padding() }
                
            })
            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
        
    .background(Capsule()     )
    .foregroundColor(Color(#colorLiteral(red: 0.6156862745, green: 0.2980392157, blue: 0.2745098039, alpha: 1)))}

.fixedSize(horizontal: true, vertical: true)
Spacer(minLength: 10)
}}
