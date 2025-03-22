//
//  UnDiceView.swift
//  week3_Button
//
//  Created by 이건무 on 3/23/25.
//

import SwiftUI

struct UnDiceView: View {
    @Binding var numberOfDice:Int //contentview에 numberOfDice를 바인딩으로 불러와 값을 변경하면 contentview에서도 변경되게 만듦
    var body: some View {
        VStack {
            //물음표 아이콘 설정
            Image(systemName :"questionmark")
                .resizable()  //크기 변경 가능
                .frame(width :60, height : 100) //사이즈 적용
                //.aspectRatio(1, contentMode: .fit)
                .padding()
                //다이스를 추가하는 버튼
            Button("Add a Dice"){
                withAnimation{
                    numberOfDice += 1 //버튼 클릭시 numberofdice의 값이 1 추가됨
                }
            }
            .buttonStyle(.bordered) //버튼 스타일 테두리로 변경
        }
    }
}

#Preview {
    UnDiceView(numberOfDice: .constant(1)) //numberofdice를 1로 설정해 미리 확인 할 수 있음
}
