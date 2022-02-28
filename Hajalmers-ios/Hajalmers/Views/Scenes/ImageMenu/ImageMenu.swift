

import SwiftUI

struct ImageMenu: View {
    @EnvironmentObject var modelData: ModelData

    var body: some View {
            List {
              
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                    Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                }

            .listRowInsets(EdgeInsets())
                .background(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
            }
            .navigationTitle("The Dishes")
            .background(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
        }
}

struct ImageMenu_Previews: PreviewProvider {
    static var previews: some View {
        ImageMenu()
            .environmentObject(ModelData())
    }
}
