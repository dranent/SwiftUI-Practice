//
//  MyCard.swift
//  CoupleNotes00
//
//  Created by M.MUNG on 2024/03/15.
//

import SwiftUI

struct MyCard: View {
    
    var icon: String
    var title : String
    var start : String
    var end : String
    var bgColor : Color
    
    
    var body: some View {
        
        HStack (spacing: 20){
            Image(systemName: icon)
                .font(.system(size: 40))
                .foregroundColor(.white)
            
            VStack(alignment: .leading, spacing: 0
            ) {
                Divider().opacity(0)
                Text(title)
                    .fontWeight(.bold)
                    .font(.system(size: 23))
                    .foregroundColor(.white)
                Spacer().frame(height: 5)
                Text("\(start) - \(end)")
                    .foregroundColor(.white)
            }
            
        }
        .padding(20)
        .background(bgColor)
        .cornerRadius(20)
    }
}

#Preview {
    MyCard(icon: "doc.fill", title: "title", start: "start", end: "end", bgColor: .blue)
}
