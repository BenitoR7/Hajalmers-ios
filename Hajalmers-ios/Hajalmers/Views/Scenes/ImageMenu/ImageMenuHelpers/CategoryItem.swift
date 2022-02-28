

import SwiftUI

struct CategoryItem: View {
    var menu: Menu

    var body: some View {
        VStack(alignment: .leading) {
            menu.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 105, height: 105)

                .cornerRadius(5)
                .shadow(color: .gray, radius: 0.2, x: 1, y: 1)
            .border(Color("DeepRed"))
            .padding(.horizontal)


            Text(menu.name)                .fontWeight(.bold)
                .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .foregroundColor(Color("DeepRed"))
                .font(.caption)
                .frame(width: 105)
                .lineLimit(2)
                .minimumScaleFactor(0.8)
                .multilineTextAlignment(.trailing)
                .fixedSize(horizontal: true, vertical: false)
                .padding(.leading, 15)

        }
        .padding(.leading, 15)
        .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))

    }
}

