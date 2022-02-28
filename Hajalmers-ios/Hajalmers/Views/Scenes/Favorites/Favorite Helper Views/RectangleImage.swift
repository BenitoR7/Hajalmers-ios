

import SwiftUI

struct RectangleImage: View {
    var image: Image

    var body: some View {
        image
            .resizable()
            .frame( height: 200)
            .clipShape(Rectangle())
            .aspectRatio(contentMode: .fill)  }}

struct RectangleImage_Previews: PreviewProvider {
    static var previews: some View {
        RectangleImage(image: Image("FriedCrawfishTails"))
    }}
