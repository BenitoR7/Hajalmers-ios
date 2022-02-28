

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Menu]

    var body: some View {
        
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.bottom,0.15)            .padding(.top,0.15)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { menu in


                        NavigationLink(destination: MenuDetail(menu: menu)) {
                            CategoryItem(menu: menu)
                         

                        }}}
                .cornerRadius(5)
                .padding(.top,0)
            }}
        .background(Color.white)
        .cornerRadius(5)
        .foregroundColor(Color("DeepRed"))
        .padding(.leading, 15)
        .padding(.trailing, 15)
}}


