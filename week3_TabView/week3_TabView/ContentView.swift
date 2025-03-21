//
//  ContentView.swift
//  week3_TabView
//
//  Created by 이건무 on 3/21/25.
//

import SwiftUI

let gradientColor : [Color]=[
    .gradientT,
    .gradientB
]

struct ContentView: View {
    var body: some View {
        TabView {
            WelcomePage()
            FeaturesPage()
        }
        .background(Gradient(colors: gradientColor))
        .tabViewStyle(.page)
        .foregroundStyle(.white)
    }
}

#Preview {
    ContentView()
}
