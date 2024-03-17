//
//  SubContentView.swift
//  CoupleNotes00
//
//  Created by M.MUNG on 2024/03/15.
//

import SwiftUI

struct SubContentView: View {
    
    @State var isNavigation = false
    
    var body: some View {
            ZStack(alignment: .bottomTrailing) {
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        NavigationLink(destination: MyList(isNavigationgBarHIdden: self.$isNavigation
                                                          )) {
                            Image(systemName: "line.horizontal.3")
                                .font(.largeTitle)
                                .foregroundColor(Color.primary)
                        }
                        
                        Spacer()
                        NavigationLink(destination:
                                        ProfileView(isNavigationgBarHIdden: self.$isNavigation)
                        ) {
                            Image(systemName: "person.crop.circle.fill")
                                .font(.largeTitle)
                                .foregroundColor(Color.black)
                        }            .padding(.top, 20)
                            .padding(.horizontal)
                        
                    }
                    
                        
                    
                    
                    Text("TO DO")
                        .font(.system(size: 40))
                        .fontWeight(.black)
                        .padding(.horizontal)
                    
                    ScrollView {
                        VStack{
                            MyProjectCard()
                            MyCard(icon: "tray.fill", title: "desk clean", start: "10 AM", end: "11 AM", bgColor: .blue)
                            MyCard(icon: "tv.fill", title: "Watch TV", start: "11 AM", end: "12 PM", bgColor: .green)
                            MyCard(icon: "cart.fill", title: "Shopping", start: "3 PM", end: "5 AM", bgColor: .red)
                            MyCard(icon: "gamecontroller.fill", title: "Play Game", start: "10 AM", end: "11 AM", bgColor: .purple)
                        }.padding()
                    }
                }
                
                
                Circle()
                    .foregroundColor(.yellow)
                    .frame(width: 60, height: 60)
                    .overlay(
                        Image(systemName: "plus")
                            .font(.system(size: 30))
                            .foregroundColor(.white)
                    )
                    .padding(.trailing, 10)
                    .shadow(radius: 20)
            }
            .navigationTitle("Back")
            
            .navigationBarHidden(self.isNavigation)
            .onAppear {
                self.isNavigation = true
            }
        
    }
}

#Preview {
    SubContentView()
}
