//
//  LazyVGridTutorial.swift
//  CoupleNotes00
//
//  Created by M.MUNG on 2024/03/22.
//

import SwiftUI

struct MyModel: Identifiable {
    let id = UUID()
    let title: String
    let content: String
}
extension MyModel {
    static var dummyDataArray: [MyModel] {
        (1...2000).map { (number: Int) in
            MyModel(title: "title : \(number)", content: "content: \(number)")
        }
    }
}

struct LazyVGridTutorial: View {
    
    var dummyDataArray = MyModel.dummyDataArray
    
    var body: some View {

        ScrollView {
            
            // LazyVGrid
            // colums : horizon item layout setting
            // fixed, adaptive, flexible
            LazyVGrid(columns: [
                GridItem(.fixed(100)),
                GridItem(.adaptive(minimum: 50)),
                GridItem(.flexible(minimum: 50)),
            ],spacing: 30 ,content: {
                
                ForEach(dummyDataArray) { (dataItem: MyModel) in
                    Rectangle().foregroundColor(.blue).frame(height: 120)
                        .overlay (
                            Text("\(dataItem.title)")
                        )
                }
                
                
            })
            
        } // ScrollView

    }
}

#Preview {
    LazyVGridTutorial()
}
