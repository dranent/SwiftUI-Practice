//
//  DiceView.swift
//  CoupleNotes00
//
//  Created by M.MUNG on 2024/03/23.
//

import SwiftUI

struct DiceView: View {
    
    let myColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
    
    @EnvironmentObject var store: AppStore
    
    @State private var shouldRoll = false
    
    @State private var pressd = false
    
    var diceRollAnimation: Animation {
        Animation.spring()
    }
    // random button action
    func rollTheDice() {
        print(#fileID, #function, #line)
        self.shouldRoll.toggle()
        
        self.store.dispatch(action: .rollTheDice)
    }
    
    var body: some View {
        
        VStack {
            Text(self.store.state.currentDice)
                .font(.system(size: 300, weight: .bold, design: .monospaced))
                .foregroundColor(Color.init(myColor))
                .rotationEffect(.degrees(shouldRoll ? 360 : 0))
                .animation(diceRollAnimation)
            
            Button(action: {
                self.rollTheDice()
            }, label: {
                Text("Random Dice")
                    .font(.system(size: 30))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(20)
            }) // button
            .scaleEffect(self.pressd ? 0.8 : 1.0)
            .onLongPressGesture(minimumDuration: .infinity, maximumDistance: .infinity, pressing: { pressing in
                withAnimation(.easeInOut(duration: 0.2), {
                    self.pressd = pressing
                })
            }, perform: {})
            
        } // VStack
    }
}

#Preview {
    DiceView()
}
