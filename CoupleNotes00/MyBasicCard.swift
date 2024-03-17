//
//  MyBasicCard.swift
//  CoupleNotes00
//
//  Created by M.MUNG on 2024/03/15.
//

import SwiftUI

struct MyBasicCard: View {
    var body: some View {
        
        HStack (spacing: 20){
            Image(systemName: "flag.fill")
                .font(.system(size: 40))
                .foregroundColor(.white)
            
            VStack(alignment: .leading, spacing: 0
            ) {
                Divider().opacity(0)
                Text("eff")
                    .fontWeight(.bold)
                    .font(.system(size: 23))
                    .foregroundColor(.white)
                Spacer().frame(height: 5)
                Text("eff")
                    .foregroundColor(.white)
            }
            
        }
        .padding(20)
        .background(Color.purple)
        .cornerRadius(20)
    }
}

#Preview {
    MyBasicCard()
}
