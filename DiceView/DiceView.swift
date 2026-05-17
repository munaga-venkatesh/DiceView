//
//  DiceView.swift
//  DiceView
//
//  Created by Venkatesh Munaga on 17/05/26.
//

import SwiftUI

struct DiceView: View {
    @State private var numberOfPips: Int = 1
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "die.face.\(numberOfPips).fill")
                .resizable()
                .frame(maxWidth: 100, maxHeight: 100)
                .aspectRatio(1, contentMode: .fit)
                .foregroundStyle(.orange, .white)
            
            Button {
                withAnimation {
                    numberOfPips = Int.random(in: 1...6)
                }
            } label: {
                Text("Roll")
            }
            .buttonStyle(.bordered)
        }
    }
}

#Preview {
    DiceView()
}
