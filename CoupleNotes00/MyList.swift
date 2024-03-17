//
//  MyList.swift
//  CoupleNotes00
//
//  Created by M.MUNG on 2024/03/15.
//

import SwiftUI

struct MyList: View {
    
    @Binding var isNavigationgBarHIdden: Bool
    
    init(isNavigationgBarHIdden: Binding<Bool> = .constant(false)) {
        if #available(iOS 14.0, *) {
            
        } else {
            UITableView.appearance().tableFooterView = UIView()
        }
        UITableView.appearance().separatorStyle = .none
        
        _isNavigationgBarHIdden = isNavigationgBarHIdden
    }
    
    var body: some View {
        
//        List {
//            ForEach (1...10, id: \.self) {
//                Text("List \($0)")
//            }
//        }
        List {
            Section(header: Text("Header")
                ,footer: Text("footer")
            ) {
                ForEach (1...3, id: \.self) { itemIndex in
                    
    //                Text("List \(itemIndex)")
                    if #available(iOS 15.0, *) {
                        MyCard(icon: "book.fill", title: "readbook", start: "1 PM", end: "3 PM", bgColor: .green)
                            .listRowSeparator(.hidden)
                    } else {
                        MyCard(icon: "book.fill", title: "readbook", start: "1 PM", end: "3 PM", bgColor: .green)                    }
                }
            }
//            .listRowInsets(EdgeInsets.init())
//            .listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10))
            
            Section(header: Text("Header")) {
                ForEach (1...10, id: \.self) { itemIndex in
    //                Text("List \(itemIndex)")
                    MyCard(icon: "book.fill", title: "readbook", start: "1 PM", end: "3 PM", bgColor: .blue)
                }.background(Color.yellow)
            }
        }
        
        .listStyle(GroupedListStyle())
        .navigationTitle("Main")
        .onAppear {
            self.isNavigationgBarHIdden = false
        }
    }
}

#Preview {
    MyList()
}
