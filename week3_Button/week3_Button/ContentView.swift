//
//  ContentView.swift
//  week3_Button
//
//  Created by 이건무 on 3/22/25.
//

import SwiftUI

struct ContentView: View {
    @State private var numberOfDice:Int = 1  //주사위 개수
    var body: some View {
        VStack {
            Text("Dice Roller")
                .font(.largeTitle.lowercaseSmallCaps()) //smallcaps스타일
            if numberOfDice == 0{
                UnDiceView(numberOfDice: $numberOfDice)  //undiceview를 실행하고 numberofdice를 바인딩으로 전달
            }else{
                HStack {
                    ForEach(1...numberOfDice, id: \.self) {_ in //numberofdice만큼 다이스 출력
                        DiceView()
                    }
                }
                .padding()
                HStack{
                    Button("Remove Dice",systemImage: "minus.circle.fill"){ //다이스를 지우는 버튼
                        withAnimation{  //매끄러운 변경
                            numberOfDice -= 1
                            if numberOfDice < 0 { numberOfDice = 0} // RemoveDice 버튼을 연타하면 numberofdice가 음수 값이 되는 것을 방지
                        }
                    }
                    .disabled(numberOfDice == 0) // 다이스 개수 최소치 설정
                    
                    Button("Add Dice",systemImage: "plus.circle.fill"){  //다이스를 추가하는 버튼
                        withAnimation{    //매끄러운 변경
                            numberOfDice += 1
                        }
                    }
                    .disabled(numberOfDice == 5) // 다이스 개수 최대치 설정
                }
                .padding()
                .labelStyle(.iconOnly) //아이콘으로만 만듦
                .font(.title)    //버튼 글꼴 크기 변경
                
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)  //Vstack이 화면 전체를 채움
        .background(Color("BGColor"))       //VStack의 배경색을 에셋에 있는 BGColor로 설정
        .tint(.black)    //검정 강조
    }
    
    
}

#Preview {
    ContentView()
}
