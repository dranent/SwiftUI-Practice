//
//  DarModeTutorial.swift
//  CoupleNotes00
//
//  Created by M.MUNG on 2024/04/09.
//

import SwiftUI

struct DarModeTutorial: View {
    
    @State fileprivate var shouldShowAlert = false
    
    @Environment(\.colorScheme) var scheme
    
    var body: some View {
        ZStack {
            Theme.myBackgroundColor(forScheme: scheme)
            
            VStack {
                
                Spacer()
                
                Button(action: {
                    shouldShowAlert.toggle()
                }, label: {
                    Text("Login")
                        .font(.system(size: 28))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .background(Theme.myButtonBackgroundColor(forScheme: scheme))
                        .cornerRadius(13)
                        .overlay(RoundedRectangle(cornerRadius: 13)
                            .stroke(.white, lineWidth: 3)
                        )
                })
                .alert(isPresented: $shouldShowAlert, content: {
                    Alert(title: Text("Hello"), message: Text("today cording"), dismissButton: .default(Text("close")))
                })
                Spacer().frame(height: 100)
            }
            
        } // ZStack
        .edgesIgnoringSafeArea(.all)
    } // body
}

#Preview {
    DarModeTutorial()
}


struct Theme {
    static func myBackgroundColor (forScheme scheme: ColorScheme) -> Color {
        let lightColor = Color.white
        let darkColor = Color.gray
        
        switch scheme {
        case .light:
            return lightColor
        case .dark:
            return darkColor
        @unknown default:
            return lightColor
        }
    }
    
    static func myButtonBackgroundColor (forScheme scheme: ColorScheme) -> Color {
        let lightColor = Color.pink
        let darkColor = Color.purple
        
        switch scheme {
        case .light:
            return lightColor
        case .dark:
            return darkColor
        @unknown default:
            return lightColor
        }
    }
}
