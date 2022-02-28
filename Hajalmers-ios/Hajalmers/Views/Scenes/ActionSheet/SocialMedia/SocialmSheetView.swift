
import Foundation
import SwiftUI
struct SocialmSheetView: View {
    @Binding var showSocialmSheetView: Bool

    var body: some View {
        ZStack {
      VStack{ SocialmSheetMenu(showSocialmSheetView: self.$showSocialmSheetView) }}
            .padding([.leading, .trailing], 20)
            .navigationBarItems(trailing: Button(action: {
                    print("Dismissing link view...")
                    self.showSocialmSheetView = false}) {Text("Done").bold()
                           .foregroundColor(Color("DeepRed"))})  }}
