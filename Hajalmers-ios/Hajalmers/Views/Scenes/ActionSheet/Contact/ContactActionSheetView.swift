

import Foundation
import SwiftUI
struct ContactActionSheetView: View {
    @Binding var showFloatingButton: Bool

    var body: some View {
        ZStack {
            VStack{

                ContactMenu()
                
                    Button(action: {
                            print("Dismissing sheet view...")
                            self.showFloatingButton = false}) {
                        Image(systemName: "x.circle.fill")
                            .font(.title)

                                .foregroundColor(Color("DeepRed"))
                                
                                .padding()
                            }}}}}
            
            
