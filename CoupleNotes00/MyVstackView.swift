//
//  SwiftUIView.swift
//  CoupleNotes00
//
//  Created by M.MUNG on 2024/03/14.
//

import SwiftUI

struct MyVstackView: View {
    
    // data binding
    @Binding var isActivated: Bool
    
    // init
    init(isActivated: Binding<Bool> =
        .constant(false)) {
            _isActivated = isActivated
        }
    
    var body: some View {
        VStack {
            Text("1!")
                .fontWeight(.bold)
                .font(
                    .system(size: 60))
            Text("2!")
                .fontWeight(.bold)
                .font(
                    .system(size: 60))
            Text("3!")
                .fontWeight(.bold)
                .font(
                    .system(size: 60))
        }// VStack
        .background(self.isActivated ? Color.green : Color.red)
        .padding(self.isActivated ? 10 : 0)
    }
    
}

#Preview {
    MyVstackView()
}
