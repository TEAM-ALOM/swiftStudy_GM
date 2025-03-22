//
//  UnDiceView.swift
//  week3_Button
//
//  Created by 이건무 on 3/23/25.
//

import SwiftUI

struct UnDiceView: View {
    @Binding var numberOfDice:Int
    var body: some View {
        VStack {
            Image(systemName :"questionmark")
                .resizable()
                .frame(width :60, height : 100)
                .aspectRatio(1, contentMode: .fit)
                .padding()
            Button("Add a Dice"){
                withAnimation{
                    numberOfDice += 1
                }
            }
            .buttonStyle(.bordered)
        }
    }
}

#Preview {
    UnDiceView(numberOfDice: .constant(1))
}
