//
//  ProfileView.swift
//  CoupleNotes00
//
//  Created by M.MUNG on 2024/03/15.
//

import SwiftUI

struct ProfileView: View {
    
    @Binding var isNavigationgBarHIdden: Bool
    
    init(isNavigationgBarHIdden: Binding<Bool> = .constant(false)) {
        
        
        _isNavigationgBarHIdden = isNavigationgBarHIdden
    }
    
    var body: some View {
        ScrollView {
            VStack {
                Image("4")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle().strokeBorder(Color.yellow, lineWidth: 15)
                    )
                    .padding(20)
                Text("Dawn Steeves")
                    .font(.system(size: 30))
                    .padding(10)
                Text("dawn.steeves@example.com 10/3/1971")
                    .font(.system(size: 20))
                    .padding(10)
                Spacer()
                Spacer()
                Spacer()
                HStack {
                    Button(action: {}, label: {
                        Text("Subscribe")
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                    })
                    .padding(10)
                    .background(Color.red)
                    .cornerRadius(20)
                    
                    Button(action: {}, label: {
                        Text("Open Chat")
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                    })
                    .padding(10)
                    .background(Color.orange)
                    .cornerRadius(20)
                }
            } // VStack
            
        } // ScrollView
        .navigationTitle("My profile")
        .onAppear {
            self.isNavigationgBarHIdden = false
        }
        .navigationBarItems(trailing:
                                NavigationLink (destination: Text("efef")
                                    .font(.largeTitle)
                                    .fontWeight(.black)
                                ) {
            Image(systemName: "gear")
        })
        
    }
}

#Preview {
    ProfileView()
}
