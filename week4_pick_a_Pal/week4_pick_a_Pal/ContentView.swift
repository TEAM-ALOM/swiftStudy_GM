//
//  ContentView.swift
//  week4_pick_a_Pal
//
//  Created by 이건무 on 4/2/25.
//

import SwiftUI

struct ContentView: View {
    @State private var names:[String] = []
    @State private var nameToAdd = ""
    @State private var pickedName = ""
    @State private var shouldRemovePickedName = false
    var body: some View {
        VStack {
            VStack(spacing: 8){
                Image(systemName: "person.3.sequence.fill")
                //아이콘 색 지정
                    .foregroundStyle(.tint)
                //아이콘 꾸미기(흐리게)
                    .symbolRenderingMode(.hierarchical)
                Text("Pick-a-Pal")
                
            }
            .font(.title)
            .bold()
            
            //pickedname이 비어있으면 공백을 표시, 아니면 pickedname표시(삼단조건연산자)
            Text(pickedName.isEmpty ? "" : pickedName)
                .font(.title2)
                .bold()
                .foregroundStyle(.tint)
            //리스트 - 스크롤이 가능한 목록 뷰, 정렬 및 구분선 적용
            List{
                //names의 배열을 순회하며 각 항목의 text뷰를 생성
                ForEach(names, id: \.description) { name in
                    Text(name)
                }
            }
            //list뷰 모서리
            .clipShape(RoundedRectangle(cornerRadius: 8))
            TextField("Add Name", text: $nameToAdd)
            //자동수정기능 (atuocorrection) 비활성화
                .autocorrectionDisabled()
            //Return키를 누르면 클로저 안에 코드가 실행
                .onSubmit {
                    if !nameToAdd.isEmpty {
                        //nameToAdd를 names 배열에 추가
                        names.append(nameToAdd)
                        //nameToAdd 초기화
                        nameToAdd = ""

                    }
                }
            //구분선
            Divider()
            //shouldremovepickedname의 불리언 값을 참, 거짓으로 설정하게 하는 토글 생성
            Toggle("Remove when picked", isOn: $shouldRemovePickedName)
            
            Button{
                //randomname에 names배열의 랜덤한 원소를 넣음
                if let randomName = names.randomElement(){
                    //pickedname에 저장
                    pickedName = randomName
                    //토글이 켜져있는지 확인
                    if shouldRemovePickedName{
                        //켜져있다면 pickedName을 지움
                        names.removeAll { name in
                            return (name == randomName)
                        }
                    }
                //list에 아무것도 없을 경우
                }else{
                    pickedName = ""
                }
            } label:{
                Text("Pick Random Name")
                    .padding(.vertical,8)
                    .padding(.horizontal,16)
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
