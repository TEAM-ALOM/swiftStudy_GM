//
//  FeatureCard.swift
//  week3_TabView
//
//  Created by 이건무 on 3/21/25.
//

import SwiftUI

struct FeatureCard: View {
    let iconName : String
    let description : String
    var body: some View {
        HStack{
            Image(systemName : iconName) //아이콘 불러오기
                .font(.system(size : 45))  //아이콘 사이즈
                .frame(width: 55) //아이콘 너비
                .padding(.trailing, 10) //오른쪽에 여백 10 추가
            
            Text(description)
                .frame(maxWidth: .infinity, alignment: .center) // maxWidth : .infinity = 공간 최대차지
                                                                // alignment : .center = 가운데 정렬
                //.multilineTextAlignment(.center) //가운데 정렬
            Spacer()
        }
        .padding()
        .background(Color.gray, in :RoundedRectangle(cornerRadius: 12)) // 색 지정 및 테두리 처리
        .foregroundStyle(.white)
    }
}


#Preview {
    FeatureCard(iconName: "person.2.crop.square.stack.fill", description: "ㅁ")
}
