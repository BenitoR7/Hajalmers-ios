
import SwiftUI

struct MenuRow: View {
    @Environment(\.managedObjectContext) var managedObjectContext
    var menu: Menu
    var body: some View {
        HStack {
            menu.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(menu.name)

            Spacer()

            if menu.isFavorite {
                Image(systemName: "heart.fill")
                    .foregroundColor(Color("DeepRed"))
            }}}}
