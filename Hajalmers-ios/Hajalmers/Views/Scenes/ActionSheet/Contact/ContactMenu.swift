import SwiftUI
import UIKit

struct ContactMenu: View {
    
@ObservedObject var viewModel = ViewModel()
  
var body: some View {
    VStack{
    Text("Hajalmer's Contact")

        .font(Font.custom("abraham", size: 28))
        .padding(.top,4)
        
        
        ZStack {  if viewModel.backgroundBlack {
            
          
            
            (Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).opacity(0.75))}
        VStack {
          if viewModel.showMenuItem1 {
              ZStack{
                        
                      DirectionsButton()

                        
                    }
                .shadow(color: .gray, radius: 0.2, x: 1, y: 1)
                .transition(.move(edge: .trailing))
            Text("Location")

                .font(Font.custom("abraham", size: 20))
                .padding(.top,4)
                            }
            
            if viewModel.showMenuItem2 {
                ZStack {Circle()
                    .foregroundColor(Color(#colorLiteral(red: 0.6156862745, green: 0.2980392157, blue: 0.2745098039, alpha: 1)))                    .frame(width: 55, height: 55)
                    Link(destination: URL(string: "mailto:hello@hajalmers.com")!, label:{
                        MenuItem(icon: "envelope.fill")  })
                    .padding()  }
            .shadow(color: .gray, radius: 0.2, x: 1, y: 1)
            .transition(.move(edge: .trailing))
                Text("Email")

                    .font(Font.custom("abraham", size: 20))
                    .padding(.top,4)                            }
            
            
            
            if viewModel.showMenuItem3 {
                ZStack {
                    
                    PhoneButton()
                    
                    
                 }
                Text("Call")
                    
                    .font(Font.custom("abraham", size: 20))
                    .padding(.top,4)}
        }}}
    .foregroundColor(Color(#colorLiteral(red: 0.6156862745, green: 0.2980392157, blue: 0.2745098039, alpha: 1)))}}



struct MenuItem: View {
    
    var icon: String
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .frame(width: 55, height: 55)
            Image(systemName: icon)
                .imageScale(.large)
                .foregroundColor(Color(#colorLiteral(red: 0.6156862745, green: 0.2980392157, blue: 0.2745098039, alpha: 1)))}
        .shadow(color: .gray, radius: 0.2, x: 1, y: 1)
        .transition(.move(edge: .trailing))    }}


struct ContactMenu_Previews: PreviewProvider {
    static var previews: some View {
        ContactMenu()
    }}
