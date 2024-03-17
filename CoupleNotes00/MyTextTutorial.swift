//
//  MyTextTutorial.swift
//  CoupleNotes00
//
//  Created by M.MUNG on 2024/03/14.
//

import SwiftUI

struct MyTextTutorial: View {
    
    static let dateFormat : DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "YYYY년 M월 d일"
        return formatter
    }()
    
    var today = Date()
    
    var body: some View {
        Text("Hello, World! Hello, World! Hello, World! Hello, World! Hello, World! Hello, World! Hello, World! Hello, World! Hello, World! ")
            .tracking(1)
            .font(.system(.largeTitle, design: .monospaced))
            .fontWeight(.thin)
            .multilineTextAlignment(.center)
            .lineLimit(nil)
            .lineSpacing(20)
            .truncationMode(.tail)
            .shadow(color: Color.red, radius: 1.5, x: -10, y: 10)
            .padding(10)
            .background(Color.yellow)
            .cornerRadius(20)
            .padding()
            .background(Color.green)
        
        Text("Love")
            .background(Color.gray)
            .font(.system(size: 40))
        
        Text("Today : \(today, formatter: MyTextTutorial.dateFormat) ")
    }
}

#Preview {
    MyTextTutorial()
}
