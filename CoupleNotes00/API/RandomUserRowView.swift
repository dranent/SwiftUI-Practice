//
//  RandomUserRowView.swift
//  CoupleNotes00
//
//  Created by M.MUNG on 2024/03/24.
//

import SwiftUI

struct RandomUserRowView: View {
    
    var randomUser : RandomUser
    
    init(_ randomUser : RandomUser ) {
        self.randomUser = randomUser
    }
    
    
    var body: some View {
        HStack{
            ProfileImgView(imageUrl: randomUser.profileImgUrl)
            Text("\(randomUser.description)")
                .fontWeight(.heavy)
                .font(.system(size: 25))
                .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                .minimumScaleFactor(0.5)
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 50, alignment: .leading).padding(.vertical)
    }
}

#Preview {
    RandomUserRowView(RandomUser.getDummy())
}
