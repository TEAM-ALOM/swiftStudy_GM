//
//  ContentView.swift
//  swiftstudy
//
//  Created by 이건무 on 3/18/25.
//

import SwiftUI

//싱글톤 생성
class UserInfo {
    static let shared = UserInfo()
    var name : String = "이건무"
    var id : Int?
    var password : String?
    var email : String?
    private init(){ } //여러 인스턴스를 생성할 수 없게 함
}

func singleton(){
    let userInfo1 = UserInfo.shared
    let userInfo2 = UserInfo.shared
    print(userInfo1.name)  //이건무 출력
    userInfo1.name = "김건무" //Userinfo1.name을 김건무로 변경
    print(userInfo1.name)
    print(userInfo2.name)   //Userinfor2.name까지 김건무로 변경됨(여러인스턴스 생성x)
    userInfo2.name = "박건무"
    print(userInfo1.name)
    print(userInfo2.name)
}

struct ContentView: View {
    var body: some View {
        VStack {
        }
            .onAppear {  // 뷰가 나타날 때 singleton 함수 호출
                singleton()
        }
    }
    
}

#Preview {
    ContentView()
}
