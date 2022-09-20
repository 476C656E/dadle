//
//  SocialLoginButton.swift
//  dadle
//
//  Created by Whiskey on 2022/09/06.
//

import SwiftUI

extension ButtonStyleConfiguration {
    func customBody() -> some View {
        self.label
            .frame(width: 300, height: 25)
            .padding()
            .background(Color(red:0, green: 0, blue: 0.5))
            .foregroundColor(.white)
            .cornerRadius(5)
            .scaleEffect(self.isPressed ? 1.1 : 1)
            .animation(.easeOut(duration: 0.2), value: self.isPressed)
    }
}

// MARK: Kakao Login Button Style
struct KakaoLoginButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .customBody()
            
    }
}

// MARK: Apple Login Button Style
struct AppleLoginButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .customBody()
            .shadow(color: .black, radius: 3, x: 0, y: 1)
    }
}

struct SocialLoginButton: View {
    var body: some View {
        VStack  {
            
            Button("Kakao Login") {
                // Kakao SDKAction
                print("Kakako Btn Pressed!")
            }
            .buttonStyle(KakaoLoginButtonStyle())
            
            Button("Apple Login") {
                // Apple SDKAction
                print("Apple Btn pressed!")
            }.buttonStyle(AppleLoginButtonStyle())
        }
    }
}

struct SocialLoginButton_Previews: PreviewProvider {
    static var previews: some View {
        SocialLoginButton()
    }
}
