//
//  RandomUserApi.swift
//  CoupleNotes00
//
//  Created by M.MUNG on 2024/03/24.
//

import SwiftUI
import SwiftUIIntrospect

struct RandomUserApi: View {
    
    @ObservedObject var randomUserViewModel = RandomUserViewModel()
    
    var body: some View {
        
        
        
        List(randomUserViewModel.randomUsers) { aRandomUser in
            RandomUserRowView(aRandomUser)
            
        }
        
    }
}

#Preview {
    RandomUserApi()
}
