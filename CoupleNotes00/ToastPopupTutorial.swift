//
//  ToastPopupTutorial.swift
//  CoupleNotes00
//
//  Created by M.MUNG on 2024/03/17.
//

import SwiftUI
import PopupView

struct ToastPopupTutorial: View {
    
    @State var shouldShowPopup : Bool = false
    
    var body: some View {
        ZStack {
            VStack {
                Button {
                    self.shouldShowPopup = true
                } label: {
                    Text("popup")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }

            } // VStack
            
        } // ZStack
        .popup(isPresented: $shouldShowPopup) {
                        Text("The popup")
                            .frame(width: 200, height: 60)
                            .background(Color(red: 0.85, green: 0.8, blue: 0.95))
                            .cornerRadius(30.0)
                            .padding()
                    } customize: {
                        $0
                        .autohideIn(2)
                        .type(.toast)
                        .position(.top)
                        .dragToDismiss(true)
                    }


        
    }
}

#Preview {
    ToastPopupTutorial()
}
