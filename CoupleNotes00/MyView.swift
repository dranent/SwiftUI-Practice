//
//  MyView.swift
//  CoupleNotes00
//
//  Created by M.MUNG on 2024/03/16.
//

import SwiftUI

struct MyView: View {
    
    var title: String
    var bgColor: Color

    var body: some View {
        ZStack {
            bgColor.edgesIgnoringSafeArea(.all)
            Text(title)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(.white)
            
        }
        .animation(.none)
    }
}

#Preview {
    MyView(title: "MyView", bgColor: .blue)
}
