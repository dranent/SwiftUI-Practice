//
//  MyCustomTabView.swift
//  CoupleNotes00
//
//  Created by M.MUNG on 2024/03/16.
//

import SwiftUI

enum TabIndex {
    case home
    case cart
    case profile
}


struct MyCustomTabView: View {
    
    @State var tabIndex : TabIndex
    @State var largerScale : CGFloat = 1.4
    
    func changeMyView (tabIndex: TabIndex) -> MyView {
        switch tabIndex {
        case .home:
            return MyView(title: "home", bgColor: Color.green)
        case .cart:
            return MyView(title: "cart", bgColor: Color.orange)
        case .profile:
            return MyView(title: "profile", bgColor: Color.blue)
        }
    }
    
    func changeIconColor (tabIndex: TabIndex) -> Color {
        switch tabIndex {
        case .home:
            return  Color.green
        case .cart:
            return  Color.orange
        case .profile:
            return  Color.blue
        }
    }
    
    func calcCircleBgPosition(tabIndex: TabIndex, geometry : GeometryProxy) -> CGFloat {
        switch tabIndex {
        case .home:
            return  -(geometry.size.width / 3)
        case .cart:
            return  0
        case .profile:
            return  geometry.size.width / 3
        }
    }
    
    var body: some View {
        
        
        GeometryReader { geometry in
            
            ZStack() {
                self.changeMyView(tabIndex: self.tabIndex)
                
                Circle()
                    .foregroundColor(.white)
                    .frame(width: 90, height: 90)
                    .position(x: UIScreen.main.bounds.width/2, y: UIScreen.main.bounds.height-40)
                    .offset(x: self.calcCircleBgPosition(tabIndex: self.tabIndex, geometry: geometry ))
                
                VStack(spacing: 0) {
                    
                    
                    
                    HStack(spacing: 0) {
                        Button(action: {
                            print("home")
                            withAnimation {
                                self.tabIndex = .home
                            }
                        }) {
                            Image(systemName: "house.fill")
                                .font(.system(size: 25))
                                .scaleEffect(self.tabIndex == .home ? self.largerScale : 1.0)
                                .foregroundColor(self.tabIndex == .home ? self.changeIconColor(tabIndex: self.tabIndex) : Color.gray)
                                .frame(width: geometry.size.width/3,height: 50)
                            
                                .offset(y: self.tabIndex == .home ? -10 : 0)
                            
                        }.background(Color.white)
                        
                        Button(action: {
                            print("cart")
                            withAnimation {
                                self.tabIndex = .cart
                            }
                        }) {
                            Image(systemName: "cart.fill")
                                .font(.system(size: 25))
                                .scaleEffect(self.tabIndex == .cart ? self.largerScale : 1.0)
                                .foregroundColor(self.tabIndex == .cart ? self.changeIconColor(tabIndex: self.tabIndex) : Color.gray)
                                .frame(width: geometry.size.width/3,height: 50)
                            
                                .offset(y: self.tabIndex == .cart ? -10 : 0)
                            
                        }
                        .background(Color.white)
                        
                        Button(action: {
                            print("profile")
                            withAnimation {
                                self.tabIndex = .profile
                            }
                        }) {
                            Image(systemName: "person.circle.fill")
                                .font(.system(size: 25))
                                .scaleEffect(self.tabIndex == .profile ? self.largerScale : 1.0)
                                .foregroundColor(self.tabIndex == .profile ? self.changeIconColor(tabIndex: self.tabIndex) : Color.gray)
                                .frame(width: geometry.size.width/3,height: 50)
                            
                                .offset(y: self.tabIndex == .profile ? -10 : 0)
                            
                        }.background(Color.white)
                    }
                    .position(x: UIScreen.main.bounds.width/2, y: UIScreen.main.bounds.height-40)
                    Rectangle()
                        .frame(height: 20)
                    .foregroundColor(.white)                }
            } // ZStack
            //        .position(x: UIScreen.main.bounds.width/2, y: UIScreen.main.bounds.height-50)
            
            //            .frame(width: geometry.size.width, height: geometry.size.height)
            //            .frame(width:  geometry.size.width, height: nil, alignment: .bottom)
        } // GeometryReader
        .edgesIgnoringSafeArea(.all)
        
    }
}

#Preview {
    MyCustomTabView(tabIndex: .home)
}
