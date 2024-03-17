//
//  CircleImageView.swift
//  CoupleNotes00
//
//  Created by M.MUNG on 2024/03/14.
//

import SwiftUI

struct CircleImageView: View {
    var body: some View {
//        Image(systemName: "flame.fill")
//            .font(.system(size: 200))
//            .foregroundColor(Color.red)
//            .shadow(color: .gray, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        Image("camera")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 120, height: 120)
            .background(Color.blue)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
            .overlay(
                Circle().stroke(Color.gray, lineWidth: 10)
                    .padding(-10)
            )
        
    }
}

#Preview {
    CircleImageView()
}
