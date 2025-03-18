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

#Preview {
    ContentView()
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct Dayforecast: View {
    let day : String
    let high : Int
    let low : Int
    let isRainy: Bool
    var iconColor : Color{
        if isRainy{
            return Color.blue
        }else{
            return Color.yellow
        }
    }
    var iconName : String {
        if isRainy{
            return "cloud.rain.fill"
        }else{
            return "sun.max.fill"
        }
    }
    var body: some View {
        VStack {
            Text(day)
                .font(Font.headline)
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
                .font(Font.largeTitle)
                .padding(5)
            Text("High:\(high)")
                .fontWeight(Font.Weight.semibold)
            Text("Low:\(low)")
                .fontWeight(Font.Weight.medium)
                .foregroundStyle(Color.secondary)
        }
        .padding()
    }
}
