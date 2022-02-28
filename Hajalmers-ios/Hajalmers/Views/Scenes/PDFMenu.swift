
import SwiftUI

struct PDFMenu: View {
    
    init() {UINavigationBar
        .appearance()
        .titleTextAttributes = [.font: UIFont(name: "Verdana", size: 16)!]   }
    
@ObservedObject var viewModel = ViewModel()

var body : some View


{ ZStack{Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
    VStack {
    
     Image( uiImage: #imageLiteral(resourceName: "hajalmers_logo1"))
            .resizable()
            .frame(width:200, height: 40)
            .padding(.top, 15)
            .padding(.leading, 15)
            .padding(.trailing, 15)
        
        Picker("Type", selection: $viewModel.selectedSegment){
            
            Text("Dine-In")
                .tag(0)
            Text("T-0ut1")
                .tag(1)

            Text("T-Out2")
                .tag(2)
                }
        .frame(width:200)
.pickerStyle(SegmentedPickerStyle())
            
                     .background(Color(#colorLiteral(red: 0.6156862745, green: 0.2980392157, blue: 0.2745098039, alpha: 1)))
            
        viewModel.containedView(index: viewModel.selectedSegment)
}}}}



