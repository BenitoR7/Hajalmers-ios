

import SwiftUI

struct HomeMenu : View {
    
    @State var showSocialmSheetView = false
    @State var showFloatingButton = false

    @ObservedObject var viewModel = ViewModel()

    var body : some View{
        NavigationView {
           
            ZStack{
                VStack{
                    VStack{
                       Header()
                        DayPicker()
                       MenuButtons()
                
            
            Button(action: {
                            self.showFloatingButton.toggle()}) {
            Image(systemName: "info.circle")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(Color(#colorLiteral(red: 0.6156862745, green: 0.2980392157, blue: 0.2745098039, alpha: 1)))
                            .shadow(color: .gray, radius: 0.2, x: 1, y: 1)}
                       .frame(width: 50, height: 60)
                      .padding()
                        
            Spacer(minLength:2)}
                    .sheet(isPresented: $showFloatingButton) {ContactActionSheetView(showFloatingButton: self.$showFloatingButton)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))) }
                .navigationBarColor(UIColor(#colorLiteral(red: 0.6156862745, green: 0.2980392157, blue: 0.2745098039, alpha: 1)))
                .navigationBarItems(trailing:
        
        Button(action: {self.showSocialmSheetView.toggle() })
            { Image(systemName: "link.circle.fill")
                
                .font(Font.custom("abraham", size: 20))
                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .padding(.bottom,20)

                
            }) }}
            
            .navigationBarTitleDisplayMode(.inline)
                    .toolbar {
                        ToolbarItem(placement: .principal) {
                            VStack {
                                Text("Hajalmer's Seafood + Steaks").font(Font.custom("abraham", size: 18))
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            }}}
            .font(Font.custom("Abbasy", size: 16))}
        .sheet(isPresented: $showSocialmSheetView) {SocialmSheetMenu(showSocialmSheetView: self.$showSocialmSheetView)
                           .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))) }
.navigationViewStyle(StackNavigationViewStyle())}}



struct HomeMenu_Previews: PreviewProvider {
    static var previews: some View {
 
            HomeMenu()
                           .previewDevice(PreviewDevice(rawValue: "iPad Air"))
                       .previewDisplayName("iPad Air")
           
    }}
    
