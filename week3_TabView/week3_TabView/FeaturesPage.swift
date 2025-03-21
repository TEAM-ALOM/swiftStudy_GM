//
//  FeaturesPage.swift
//  week3_TabView
//
//  Created by 이건무 on 3/21/25.
//

import SwiftUI

struct FeaturesPage: View {
    var body: some View {
        VStack{
            Text("얌얌이")
                .font(.title)
                .fontWeight(.bold)
                .padding(.bottom) //뷰 하단에 여백
            FeatureCard(iconName: "cat.fill", description: "코숏이고 회색 고양이에요.")  //FeatureCard 실행
            FeatureCard(iconName: "pawprint.fill", description: "턱시도를 입고 있고 양말도 신고 있어요")
        }
        .padding()
        
    }
}

#Preview {
    FeaturesPage()
}
