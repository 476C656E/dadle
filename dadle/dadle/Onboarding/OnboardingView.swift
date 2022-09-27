//
//  OnboardingView.swift
//  dadle
//
//  Created by 강민규 on 2022/09/04.
//

import SwiftUI

struct OnboardingView: View {
    @Binding var isOnboardingActive: Bool
    
        var body: some View {
            ZStack {
                Rectangle()
                    .foregroundColor(.AppMainColor)
                    .ignoresSafeArea()
                
                VStack {
                    Text("Dadle.")
                        .font(.largeTitle.bold())
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    // 온보딩 시작하기 버튼
                    // AppStorage의 isOnboardingActive의 값을 false로 바꿔, 다음 앱을 실행할 때 OnboardingView를 띄우지 않는다.
                    Button("시작하기") {
                        isOnboardingActive.toggle()
                        print("Start Btn Pressed !")
                    }.buttonStyle(StartHomeButton())
                }
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(isOnboardingActive: .constant(true))
    }
}
