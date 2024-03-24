//
//  RedeuxTutorial.swift
//  CoupleNotes00
//
//  Created by M.MUNG on 2024/03/23.
//

import SwiftUI

struct RedeuxTutorial: View {
    
    // create store
    let store = AppStore(state: AppState.init(currentDice: "⚀"), reducer: appRedecuer(_:_:))
    
    var body: some View {
        // subview obserbable
        DiceView().environmentObject(store)
    }
}

#Preview {
    RedeuxTutorial()
}
