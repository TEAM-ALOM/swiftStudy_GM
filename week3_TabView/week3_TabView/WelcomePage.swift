//
//  WelcomePage.swift
//  week3_TabView
//
//  Created by 이건무 on 3/21/25.
//

import SwiftUI

struct WelcomePage: View {
    var body: some View {
        VStack{
            //                RoundedRectangle(cornerRadius: 30)
            //                    .frame(width : 150, height : 150)
            //                    .foregroundStyle(.tint)
            //                Image(systemName : "figure.2.and.child.holdinghands")
            //                    .font(.system(size: 70))
            //                    .foregroundStyle(.white)
            Image("yammie")          //이미지 불러옴
                .resizable()   //이미지크기 조정 가능
                .scaledToFit()  // 비율 고정
                .frame(width: 150) //크기 설정
                .clipShape(RoundedRectangle(cornerRadius: 20)) //모서리 처리
            
            Text("얌얌이를 소개합니다")
                .font(.title) //앞에 Font을 안붙여도 됨
                .fontWeight(.semibold) //폰트 굵기 설정
                .padding(.top)
            //.border(.black , width : 1.5) //UI구분선
            Text("어떻게 고양이 이름이 얌얌이..")
                .font(.title3)
                .fontWeight(.regular)
            //.border(.black , width : 1.5)
            
        }
        // .border(.yellow, width: 1.5)
        .padding()  //기본 값이 10임
        //.border(.purple, width: 1.5)
    }
}

#Preview {
    WelcomePage()
}
