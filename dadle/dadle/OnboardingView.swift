//
//  OnboardingView.swift
//  dadle
//
//  Created by 강민규 on 2022/09/04.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        ZStack{
            VStack{
                Spacer()
                Text("Hello, world!")
                    .padding()
                Spacer()
                Button(action: {
                    
                }) {
                    Text("Tap me!")
                }
            }
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
