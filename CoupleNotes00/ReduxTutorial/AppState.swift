//
//  AppState.swift
//  CoupleNotes00
//
//  Created by M.MUNG on 2024/03/23.
//

import SwiftUI

struct AppState {
    var currentDice: String = "" {
        didSet {
            print("currentDice : \(currentDice)", #fileID, #function)
        }
    }
        
}
