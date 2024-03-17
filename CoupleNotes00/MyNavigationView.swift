//
//  MyNavigationView.swift
//  CoupleNotes00
//
//  Created by M.MUNG on 2024/03/15.
//

import SwiftUI

struct MyNavigationView: View {
    var body: some View {
        NavigationView {
            MyList()
                .navigationBarTitle("Hello", displayMode: .large)
                .navigationBarItems(leading:
                                        Button(action: {}, label: {
                    /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                })
                                    , trailing: NavigationLink (destination:
                                                                    Text("efefe")) {
                    Image(systemName: "bookmark.fill")
                        .font(.system(size: 20))
                        .foregroundColor(.black)
                }
                                    
                )
        }
        
    }
}

#Preview {
    MyNavigationView()
}
