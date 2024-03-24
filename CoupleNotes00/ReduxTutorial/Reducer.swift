//
//  Reducer.swift
//  CoupleNotes00
//
//  Created by M.MUNG on 2024/03/23.
//

import Foundation


// typealias
typealias Reducer<State, Action> = (inout State, Action) -> Void

// filter method
func appRedecuer(_ state: inout AppState, _ action: AppAction) -> Void {
    
    // filtering
    switch action {
    case .rollTheDice:
        // change app status
        state.currentDice = ["⚀", "⚁","⚂","⚃","⚄","⚅"].randomElement() ?? "⚀"
    }
    
}




