//
//  ChatCell.swift
//  telegramForkUI
//
//  Created by 游宗諭 on 2020/8/5.
//

import SwiftUI

struct ChatCell:View {
    var id:Int
    var imageTMPName :String {"\(id).circle.fill"}
    var imageURL:URL = URL(string: "http://url.com")!
    var title:String = "title"
    var lastMessage:String = "a message a message a message a message a message a message a message a message a message a message a message a message a message a message a message a message a message a message "
    var dateText:String = "09:54"
    var didnotReadCount = 422
    var lineLimit = 2
    @State private var height:CGFloat = .zero
    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: imageTMPName)
                .resizable()
                .frame(width: height, height: height)
            VStack(alignment: .leading) {
                Text(title)
                    .fontWeight(.bold)
                Text(lastMessage)
                    .lineLimit(lineLimit)
                    
            }
            .alignmentGuide(.top) { dimension in
                DispatchQueue.main.async {
                    self.height = max(dimension.height, self.height)
                }
                return dimension[.top]
            }
            VStack {
                Text(dateText)
                Text(didnotReadCount.description)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 5)
                    .background(Capsule().fill(Color.gray))
            }
        }
    }
}


struct ChatCell_Previews: PreviewProvider {
    static var previews: some View {
        ChatCell(id: 1)
    }
}
