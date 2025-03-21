import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            ScrollView(.horizontal, showsIndicators : true){
                HStack(spacing:20){
                    Dayforecast(day : "Mon", high : 70 , low : 50, isRainy: false)
                    Dayforecast(day : "Tue", high : 60 , low : 40, isRainy: true)
                    Dayforecast(day : "Wed", high : 60 , low : 40, isRainy: false)
                    Dayforecast(day : "Thu", high : 60 , low : 40, isRainy: false)
                    Dayforecast(day : "Fri", high : 60 , low : 40, isRainy: true)
                }
                .padding()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Dayforecast: View {  //구조체 생성
    let day : String    // 재할당 불가능한 string 형태의 상수 day
    let high : Int      // 재할당 불가능한 int 형태의 상수 high
    let low : Int      // 재할당 불가능한 int 형태의 상수 low
    let isRainy: Bool  // 재할당 불가능한 bool 형태의 상수 isRainy
    
    var iconColor : Color{  //아이콘 색변경
        if isRainy{     //bool값
            return Color.blue
        }else{
            return Color.yellow
        }
    }
    
    var iconName : String { //아이콘 지정
        if isRainy{
            return "cloud.rain.fill"  //구름 아이콘
        }else{
            return "sun.max.fill"  //태양 아이콘
        }
    }
    
    
    var body: some View {
        VStack {
            Text(day)
                .font(Font.headline) //폰트 변경
            Image(systemName: iconName)  //아이콘 불러오기
                .foregroundStyle(iconColor)  //아이콘 컬러 설정
                .font(Font.largeTitle)    //아이콘 크기 변경
                .padding(5)    //여백추가
            Text("High:\(high)") //구조체에서 high불러오기
                .fontWeight(Font.Weight.semibold) //high 폰트 변경
            Text("Low:\(low)")  //구조체에 low불러오기
                .fontWeight(Font.Weight.medium) //low 폰트 변경
                .foregroundStyle(Color.secondary) //low color 변경
        }
        .padding()
    }
}

//프리뷰 실행
#Preview {
    ContentView()
}
