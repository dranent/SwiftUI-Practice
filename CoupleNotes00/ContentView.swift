//
//  ContentView.swift
//  CoupleNotes00
//
//  Created by M.MUNG on 2024/03/14.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @State private var isActivated: Bool = false
    
    
    var body: some View {
        
        NavigationView {
            
            
            ScrollView {
                VStack (spacing: 50){
                    NavigationLink(destination: MyGeometryReader()) {
                        CircleImageView()
                            .padding(.bottom, 20)
                    }
                    
                    HStack {
                        MyVstackView(isActivated: $isActivated)
                        MyVstackView(isActivated: $isActivated)
                        MyVstackView(isActivated: $isActivated)
                    }
                    .padding(isActivated ? 50.0 : 10.0)
                    
                    .background(isActivated ? Color.yellow : Color.blue)
                    .onTapGesture {
                        // with animation
                        withAnimation {
                            self.isActivated.toggle()
                            
                        }
                        
                        print("HStack tapped")
                    }// HStack
                    // NavigationLink
                    NavigationLink (
                        destination: MyTextView(isActivated: $isActivated)) {
                            Text("Navigation")
                                .fontWeight(.bold)
                                .font(.system(size: 30))
                                .padding(20)
                                .background(Color.orange)
                                .foregroundColor(Color.white)
                                .cornerRadius(30)
                                
                        }
                    NavigationLink (
                        destination: SubContentView()) {
                            Text("SubContentView")
                                .fontWeight(.bold)
                                .font(.system(size: 30))
                                .padding(20)
                                .background(Color.pink)
                                .foregroundColor(Color.white)
                                .cornerRadius(30)
                        }

                    HStack {
                        NavigationLink (destination: WebView(urlToLoad: "https://www.naver.com")
                            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        ) {
                            Text("Naver")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .padding(20)
                                .background(Color.green)
                                .foregroundColor(Color.white)
                                .cornerRadius(20)
                        }
                        NavigationLink (destination: WebView(urlToLoad: "https://google.com")
                            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                                        
                        ) {
                            Text("Google")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .padding(20)
                                .background(Color.blue)
                                .foregroundColor(Color.white)
                                .cornerRadius(20)
                        }
                        NavigationLink (destination: WebView(urlToLoad: "https://www.daum.net")
                            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        ) {
                            Text("daum")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .padding(20)
                                .background(Color.orange)
                                .foregroundColor(Color.white)
                                .cornerRadius(20)
                        }
                        
                    }
                }
            } // ScrollView
            
            
            
        }// NavigationView
        .edgesIgnoringSafeArea(.all)
        
    }
}

#Preview {
    ContentView()
}
