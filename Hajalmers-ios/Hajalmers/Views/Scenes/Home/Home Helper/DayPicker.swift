import SwiftUI



struct DayPicker: View {

      @State var selection = "For hours select from days above"
    

    var body: some View {

            let item1 = SegmentItem(title: "M", selectionIndex: "Monday 11am-10pm")
            let item2 = SegmentItem(title: "T",selectionIndex: "Tuesday 11am-10pm")
            let item3 = SegmentItem(title: "W",  selectionIndex: "Wednesday 11am-10pm")
        let item4 = SegmentItem(title: "R", selectionIndex: "Thursday 11am-10pm")
        let item5 = SegmentItem(title: "F", selectionIndex: "Friday: 11am-10pm")
        let item6 = SegmentItem(title: "S",  selectionIndex: "Saturday: 11am-10pm")
        let item7 = SegmentItem(title: "Sun",  selectionIndex: "Sunday: 4pm-10pm")
            return VStack() {
                  
                  SegmentControl(selection: $selection, items: [item1, item2, item3,item4, item5,item6, item7])
                Text("\(selection)")
                    .foregroundColor(Color("DeepRed"))
                    .font(Font.custom("Abbasy", size: 22))

            }
      }
}


struct SegmentControl : View {

      @Binding var selection : String
      var items : [SegmentItem]

      var body : some View {

            let width : CGFloat = 100.0
          return HStack{
                  ForEach (items, id: \.self) { item in
                    SegmentButton(text: item.title, width: width, selectionIndex: item.selectionIndex, color: item.color, selection: self.$selection)
                  }
            }
          .fixedSize()
              .frame(maxWidth: .infinity)
              .padding(2)

                          .font(.body)
                  .cornerRadius(8.0)
            .background(Color(#colorLiteral(red: 0.6156862745, green: 0.2980392157, blue: 0.2745098039, alpha: 1)))
      }

}


struct SegmentButton : View {

      var text : String
      var width : CGFloat
    var selectionIndex = String()
    var color : Color

      @Binding var selection : String

      var body : some View {
            let label = Text(text)

                             
                  .cornerRadius(10.0)
                  .foregroundColor(Color("DeepRed"))
                .font(Font.custom("abraham", size: 26))


        return Button(action: { self.selection = self.selectionIndex }) { label }

                .padding()
                .background(
                    RoundedRectangle(
                        cornerRadius: 20,
                        style: .continuous
                    )
                        .foregroundStyle(selection == selectionIndex ?
                                         Color.white : Color.black)

                )      }
   
}




struct SegmentItem : Hashable {
      var title : String = ""
      var selectionIndex = ""
    var color : Color = Color.black
}

