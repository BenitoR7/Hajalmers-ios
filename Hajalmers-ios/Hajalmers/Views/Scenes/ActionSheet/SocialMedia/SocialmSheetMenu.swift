
import Foundation
import SwiftUI

    struct SocialmSheetMenu: View {
       
        @Binding var showSocialmSheetView: Bool

        var body: some View {

                VStack{
                   
                    
                    Text("Hajalmer's Social Media")
                        .foregroundColor(Color("DeepRed"))

                    .font(Font.custom("abraham", size: 28))
                    .padding(.top,4)
               
                    
                    ZStack {
                        (Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).opacity(0.75))


                    VStack(alignment: .leading)
                        {ZStack
                    { Circle()
                    .foregroundColor(Color(#colorLiteral(red: 0.6156862745, green: 0.2980392157, blue: 0.2745098039, alpha: 1)))                 .frame(width: 55, height: 55)
                        Link(destination: URL(string: "https://www.yelp.com/menu/hajalmers-seafood-and-steaks-longview/item/fried-crawfish-tails-4oz#menu-reviews")!, label:{
                            Circle()
                .foregroundColor(Color(#colorLiteral(red: 0.6156862745, green: 0.2980392157, blue: 0.2745098039, alpha: 1)))
                .frame(width: 55, height: 55)  })
                        
               Image("yelp")}
                .frame(maxWidth: .infinity)
                    
                    VStack(alignment: .leading){
                    Text("Reviews")
                        .font(Font.custom("abraham", size: 20))
                        .padding(.top,4)
                        .padding()
                    }

                        .frame(maxWidth: .infinity)
                        
                    VStack(alignment: .leading)
                            {ZStack
                        { Circle()
                        .foregroundColor(Color(#colorLiteral(red: 0.6156862745, green: 0.2980392157, blue: 0.2745098039, alpha: 1)))                 .frame(width: 55, height: 55)
                            Link(destination: URL(string: "https://web.facebook.com/Hajalmers-260911281316446/?_rdc=1&_rdr")!, label:{
                                Circle()
                    .foregroundColor(Color(#colorLiteral(red: 0.6156862745, green: 0.2980392157, blue: 0.2745098039, alpha: 1)))
                    .frame(width: 55, height: 55)  })
                            
                   Image("Facebook")}
                    .frame(maxWidth: .infinity)
                        
                        VStack(alignment: .leading){
                        Text("Facebook")
                            .font(Font.custom("abraham", size: 20))
                            .padding(.top,4)
                            .padding()
                        }
                                           

              .frame(maxWidth: .infinity)
                    .padding(.top,0.2)
                        
                    VStack(alignment: .leading)
                                { ZStack
                                    { Circle()
                        .foregroundColor(Color(#colorLiteral(red: 0.6156862745, green: 0.2980392157, blue: 0.2745098039, alpha: 1)))
                        .frame(width: 55, height: 55)
                                        Link(destination: URL(string: "https://twitter.com/hajalmers")!, label:{
                                            Circle()
                                .foregroundColor(Color(#colorLiteral(red: 0.6156862745, green: 0.2980392157, blue: 0.2745098039, alpha: 1)))
                                .frame(width: 55, height: 55)  })
                                        
                        
                        Image("twitter") }
                    .frame(maxWidth: .infinity)
                        VStack(alignment: .leading){
                        Text("Twitter")
                            .font(Font.custom("abraham", size: 20))
                            .padding(.top,4)
                            .padding()
                        }
                        .frame(maxWidth: .infinity)
                        
                        
                        }}}.foregroundColor(Color(#colorLiteral(red: 0.6156862745, green: 0.2980392157, blue: 0.2745098039, alpha: 1)))
                    
    }
                    

    Button(action: {print("Dismissing sheet view...")
        self.showSocialmSheetView = false}) {
    Image(systemName: "xmark.circle.fill")
                            .font(.title)
                            .foregroundColor(Color("DeepRed"))}
                            .frame(maxWidth: .infinity)
                            .padding()}} }
            
          func didDismiss() {
            // Handle the dismissing action.
        }
    



