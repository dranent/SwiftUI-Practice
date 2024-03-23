//
//  SegmentLayoutView.swift
//  CoupleNotes00
//
//  Created by M.MUNG on 2024/03/23.
//

import SwiftUI

enum LayoutType: CaseIterable{
    case table, grid, multiple
}

extension LayoutType {
    // auto set colums about layout
    var colums : [GridItem] {
        switch self {
        case .table:
            return [
                GridItem(.flexible())
            ]
        case .grid:
            return [
                GridItem(.flexible()),
                GridItem(.flexible())
            ]
        case .multiple:
            return [
                GridItem(.adaptive(minimum: 100))
            ]
        }
        
    }
}

struct SegmentLayoutView: View {
    
    var dummyDatas = MyModel.dummyDataArray
    
    @State var selectedLayoutType: LayoutType = .table
    
    var body: some View {
        VStack(content: {
            Picker(selection: $selectedLayoutType) {
                ForEach(LayoutType.allCases, id: \.self) { layoutType in
                    switch layoutType {
                    case .table:
                        Image(systemName: "list.dash")
                    case .grid:
                        Image(systemName: "square.grid.2x2.fill")
                    case .multiple:
                        Image(systemName: "circle.grid.3x3.fill")
                    }
                }
            } label: {
                            }
            .frame(width: 250)
            .pickerStyle(.segmented)
            
            ScrollView {
                LazyVGrid(columns: selectedLayoutType.colums, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, content: {
                    
                    ForEach(dummyDatas) { dataItem in
                    
                        switch selectedLayoutType {
                        case .table:
                            Rectangle().frame(height: 100)
                                .foregroundColor(.blue)
                        case .grid:
                            RoundedRectangle(cornerRadius: 25.0)
                                .frame(height: 200)
                                .foregroundColor(.red)
                                .overlay(
                                    VStack(spacing: 2) {
                                        Circle().frame(height: 100)
                                        Text("\(dataItem.title)")
                                            .font(.system(size: 20))
                                            .fontWeight(.bold)
                                        Text("\(dataItem.content)")
                                    }
                                )
                                
                                
                            
                            
                            
                        case .multiple:
                            Rectangle().frame(height: 100)
                                .foregroundColor(.green)
                        }
                        
                        
                    }
                    
                })
                .animation(.easeOut)
                .padding(.horizontal, 10)
            }
            
        })
    }
}

#Preview {
    SegmentLayoutView()
}
