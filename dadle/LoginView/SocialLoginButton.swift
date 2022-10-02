//
//  SocialLoginButton.swift
//  dadle
//
//  Created by Whiskey on 2022/09/06.
//

import SwiftUI

import KakaoSDKCommon
import KakaoSDKAuth
import KakaoSDKUser

extension ButtonStyleConfiguration {

    func customBody() -> some View {
        self.label
            .frame(width: 300, height: 25)
            .padding()
//            .background(Color(red:0, green: 0, blue: 0.5))
//            .foregroundColor(.white)
//            .cornerRadius(10)
            .scaleEffect(self.isPressed ? 1.1 : 1)
            .animation(.easeOut(duration: 0.2), value: self.isPressed)
    }
}

struct StartHomeButton: ButtonStyle {
    var labelColor = Color.white
    var backgroundColor = Color("AppMainColor")
    
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .customBody()
            .foregroundColor(labelColor)
            .background(backgroundColor)
            .cornerRadius(10)
            
    }
}

// MARK: Kakao Login Button Style
struct KakaoLoginButtonStyle: ButtonStyle {
    var labelColor = Color.white
    var backgroundColor = Color.yellow
    
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .customBody()
            .foregroundColor(labelColor)
            .background(backgroundColor)
            .cornerRadius(10)
    }
}

// MARK: Apple Login Button Style
struct AppleLoginButtonStyle: ButtonStyle {
    var labelColor = Color.white
    var backgroundColor = Color.black
    

    func makeBody(configuration: Configuration) -> some View {
        configuration
            .customBody()
            .foregroundColor(labelColor)
            .background(backgroundColor)
            .cornerRadius(10)
//            .shadow(color: .black, radius: 2, x: 0, y: 1)
    }
}


struct SocialLoginButton: View {
    @StateObject var kakaoAuthVM: KakaoAuthVM = KakaoAuthVM()
    
//    let loginStatusInfo: (Bool) -> String { isLoggedIn in
//        return isLoggedIn ? "로그인 상태" : "로그아웃 상태"
//    }
    
    var body: some View {
        VStack  {
            
            Button("Kakao Login") {
                print("Kakako Btn Pressed!")
                kakaoAuthVM.handleKakaoLogin()
            }
            .buttonStyle(KakaoLoginButtonStyle())
            .font(Font.body.bold())
            
            Button("시작 하기") {
                
            }.buttonStyle(StartHomeButton())
            .font(Font.body.bold())

            AppleLoginView()
//            SocialLoginButton2()

        }

    }
}

struct SocialLoginButton_Previews: PreviewProvider {
    static var previews: some View {
        SocialLoginButton()
        }
}
