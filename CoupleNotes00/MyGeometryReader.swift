//
//  MyGeometryReader.swift
//  CoupleNotes00
//
//  Created by M.MUNG on 2024/03/15.
//

import SwiftUI

enum Index {
    case one, two, three
}

struct MyGeometryReader: View {
    
    @State var index : Index = .one
    
    let centerPosition : (GeometryProxy) -> CGPoint = { proxy in
        return CGPoint(x: proxy.frame(in: .local).midX, y: proxy.frame(in: .local).midY)
    }
    
    var body: some View {
        
        GeometryReader {
            proxy in

            HStack {
                
                
                VStack(spacing: 0) {
                    
                    Button(action: {
                        print("1 tapped")
                        withAnimation {
                            self.index = .one
                        }
                    }) {
                        Text("1")
                            .font(.largeTitle)
                            .fontWeight(.black)
                            .frame(width: 100, height: proxy.size.height/3)
                            .padding(.horizontal, self.index == .one ? 50 : 0 )
                            .background(Color.red)
                            .foregroundColor(.white)
                    }
                    Button(action: {
                        print("2 tapped")
                        withAnimation {
                            self.index = .two
                        }                    }) {
                        Text("2")
                            .font(.largeTitle)
                            .fontWeight(.black)
                            .frame(width: 100, height: proxy.size.height/3)
                            .padding(.horizontal, self.index == .two ? 50 : 0 )
                            .background(Color.blue)
                            .foregroundColor(.white)
                    }
                    Button(action: {
                        print("3 tapped")
                        withAnimation {
                            self.index = .three
                        }                    }) {
                        Text("3")
                            .font(.largeTitle)
                            .fontWeight(.black)
                            .frame(width: 100, height: proxy.size.height/3)
                            .padding(.horizontal, self.index == .three ? 50 : 0 )
                            .background(Color.green)
                            .foregroundColor(.white)
                    }
                    
                                  
                    
                }.background(Color.yellow)
                    .position(centerPosition(proxy))
                
            }
        }
        
        .background(Color.yellow)
        .edgesIgnoringSafeArea(.all)
        
    }
}

#Preview {
    MyGeometryReader()
}
