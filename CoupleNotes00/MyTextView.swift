//
//  MyTextView.swift
//  CoupleNotes00
//
//  Created by M.MUNG on 2024/03/14.
//

import SwiftUI

struct MyTextView: View {
    
    // data binding
    @Binding var isActivated: Bool
    
    // init
    init(isActivated: Binding<Bool> =
        .constant(false)) {
            _isActivated = isActivated
        }
    
    @State private var index: Int = 0
    
    // backgound array
    private let backgroundColors = [
        Color.red,
        Color.yellow,
        Color.blue,
        Color.green,
        Color.orange
    ]
    
    var body: some View {
        VStack {
            Spacer()
            Text("background index : \(self.index) ")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity, minHeight: 0, maxHeight: 100)
            Text("enable :  \(String(isActivated))")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .foregroundColor(self.isActivated ? Color.yellow : Color.gray)
                .background(Color.black)
            Spacer()
        }
        .background(backgroundColors[index])
        .edgesIgnoringSafeArea(.bottom)
        .onTapGesture {
            if (self.index == self.backgroundColors.count - 1) {
                self.index = 0
            } else {
                self.index += 1
            }
            
            
            
            print("background tapped")
        }
    }
}

#Preview {
    MyTextView()
}
