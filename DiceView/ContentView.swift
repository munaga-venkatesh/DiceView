//
//  ContentView.swift
//  DiceView
//
//  Created by Venkatesh Munaga on 17/05/26.
//

import SwiftUI

struct ContentView: View {

    @State private var diceCount: Int = 1
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Dice Roller")
                .font(.largeTitle.lowercaseSmallCaps())
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            
            HStack(spacing: 20) {
                ForEach(1...diceCount, id: \.self) { _ in
                    DiceView()
                }
            }
            
            HStack(spacing: 30) {
                Button("Add Dice", systemImage: "plus.circle.fill") {
                    diceCount += 1
                }
                .disabled(diceCount == 5)
                
                Button("Remove Dice", systemImage: "minus.circle.fill") {
                    diceCount = max(diceCount - 1, 1)
                }
                .disabled(diceCount == 1)
            }
            .padding()
            .labelStyle(.iconOnly)
            .font(.title)
            
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.appBackground)
        .tint(.white)
    }
}

#Preview {
    ContentView()
}
