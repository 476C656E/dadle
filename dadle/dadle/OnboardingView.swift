//
//  OnboardingView.swift
//  dadle
//
//  Created by 강민규 on 2022/09/04.
//

import SwiftUI

struct OnboardingView: View {
    @State private var isShowing = false
    
    var body: some View {
        NavigationView {
            ZStack{
                Color.blue
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    Spacer()
                    Text("Hello, world!")
                        .padding()
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    Button(action: {
                        
                        self.isShowing = true
                        
                    }) {
                        Text("Tap me!")
                            .padding(20)
                            .foregroundColor(.white)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(.white, lineWidth: 1)
                            )
                    }
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
