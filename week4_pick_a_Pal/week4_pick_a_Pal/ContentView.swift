//
//  ContentView.swift
//  week4_pick_a_Pal
//
//  Created by 이건무 on 4/2/25.
//

import SwiftUI

struct ContentView: View {
    @State private var names:[String] = ["이건무","이영빈","김동은","장호성","양현석","황재동","안강준"]
    @State private var nameToAdd = ""
    var body: some View {
        VStack {
            List{
                ForEach(names, id: \.description) { name in
                    Text(name)
                }
            }
            TextField("Add Name", text: $nameToAdd)
                .autocorrectionDisabled()
                .onSubmit {
                    if !nameToAdd.isEmpty {
                        names.append(nameToAdd)
                        nameToAdd = ""

                    }
                }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
