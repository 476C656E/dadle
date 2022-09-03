//
//  ContentView.swift
//  dadle
//
//  Created by 강민규 on 2022/09/04.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
    ZStack{
        Color.blue
            .ignoresSafeArea()
        Text("Hello, world!")
            .foregroundColor(.white)
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
