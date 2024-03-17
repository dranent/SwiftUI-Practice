//
//  MyTabView.swift
//  CoupleNotes00
//
//  Created by M.MUNG on 2024/03/16.
//

import SwiftUI

struct MyTabView: View {
    var body: some View {
        
        TabView {
            MyView(title: "1 num", bgColor: .orange)
                .tabItem {
                    Image(systemName: "airplane")
                    Text("1번")
                }
                .tag(0)
            MyView(title: "2 num", bgColor: .red)
                .tabItem {
                    Image(systemName: "flame.fill")
                    Text("2번")
                }
                .tag(1)
            MyView(title: "3 num", bgColor: .green)
                .tabItem {
                    Image(systemName: "doc.fill")
                    Text("3번")
                }
                .tag(2)
        }.background(Color.gray)
            
    }
}

#Preview {
    MyTabView()
}
