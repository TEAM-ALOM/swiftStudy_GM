//
//  DiceView.swift
//  week3_Button
//
//  Created by 이건무 on 3/22/25.
//

import SwiftUI

struct DiceView: View {
    @State private var numberOfPips : Int = 1   //주사위 점 개수
    // rgb값을 렌덤으로
    @State private var r : Double = .random(in: 0...1)
    @State private var g : Double = .random(in: 0...1)
    @State private var b : Double = .random(in: 0...1)
    
    var body: some View {
        VStack {
            Image(systemName :"die.face.\(numberOfPips)")  //numberofPips만큼 주사위의 점 개수 설정
                .resizable()    //아이콘 크기 편집 가능하게 만듦
                .frame(maxWidth :100, maxHeight : 100)  //아이콘 크기 설정, max로 설정해 최대값을 100으로 설정(다이스 개수가 많아지면 크기 조절 가능)
                .aspectRatio(1, contentMode: .fit)
                .foregroundColor(Color(red: r, green: g, blue: b))
            Button("Roll"){
                withAnimation{
                    numberOfPips = .random(in: 1...6)
                }
            }
            .buttonStyle(.bordered)
        }
    }
    
}
#Preview {
    DiceView()
}
