//
//  AppStore.swift
//  CoupleNotes00
//
//  Created by M.MUNG on 2024/03/23.
//

import Foundation
import UIKit
import SwiftUI

typealias AppStore = Store<AppState, AppAction>


final class Store<State, Action>: ObservableObject {
    
    // only read
    @Published private(set) var state: State
    
    private let reducer: Reducer<State, Action>
    
    
    // Reducer closer
    init(state: State, reducer: @escaping Reducer<State, Action>) {
        self.state = state
        self.reducer = reducer
    }
    
    // action by dispatch
    func dispatch(action: Action) {
        // must inout paramater &
        reducer(&self.state, action)
    }
    
    
}
