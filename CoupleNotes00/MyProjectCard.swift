//
//  MyProjectCard.swift
//  CoupleNotes00
//
//  Created by M.MUNG on 2024/03/15.
//

import SwiftUI

struct MyProjectCard: View {
    
    @State var shouldShowAlert: Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
//            Rectangle().frame(height: 0)
            Text("Youtube Project")
                .font(.system(size: 23))
                .fontWeight(.black)
                .padding(.bottom, 5)
            Text("10 AM ~ 11 AM")
                .foregroundColor(.secondary)
            Spacer().frame(height: 20)
            HStack {
                Image("1")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(lineWidth: 5)
                            .foregroundColor(Color.orange)
                    )
                Image("2")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                Image("3")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                Spacer()
                
                Button {
                    self.shouldShowAlert = true
                    print("Done button tapped")
                } label: {
                    Text("Done")
                        .foregroundColor(.white)
                        .padding(20)
                        .frame(width: 90)
                        .background(Color.blue)
                        .cornerRadius(20)
                }.alert(isPresented: $shouldShowAlert, content: {
                    Alert(title: Text("Alert"))
                })

                
               
                    
            }
        }
        .padding(30)
        .background(Color.yellow)
        .cornerRadius(20)
    }
}

#Preview {
    MyProjectCard()
}
