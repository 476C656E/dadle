//
//  OnboardingView.swift
//  dadle
//
//  Created by 강민규, Glen on 2022/09/04.
//

import SwiftUI

// MARK: Onboarding Title KaraokeAnimation
struct KaraokeEffect: View {
    let titleText: String = "Dadle."
    @State private var maskedRectScale: Bool = false

    var body: some View {
        ZStack {
            Text(titleText)
                .font(.system(size: 60, weight: .bold))
                .foregroundColor(.black)
            
            // masked text view
            Text(titleText)
                .font(.system(size: 60, weight: .bold))
                .foregroundColor(.AppMainColor)
                .mask {
                    ZStack {
                        Rectangle()
                            .frame(maxWidth: .infinity, maxHeight: 60)
                            .foregroundColor(.blue)
                            .scaleEffect(x: maskedRectScale ? 1 : 0, anchor: .leading)
                            .animation(Animation.easeIn(duration: 0.8).delay(0.5), value: maskedRectScale)
                            .onAppear() {
                                self.maskedRectScale.toggle()
                            }
                    }
                }
        }
    }
}
struct OnboardingView: View {
    @Binding var isOnboardingActive: Bool
    let ignoresSafeAreaColor = Color(.white)
    let titleText: String = "Dadle."
    
        var body: some View {
            
            ZStack {
                ignoresSafeAreaColor
                VStack(alignment: .leading) {
                    KaraokeEffect()

                    Text("오늘은 무슨 테스트를 해볼까?")
                        .font(.system(size: 18, weight: .semibold))
                        .foregroundColor(.gray)

                    // 온보딩 시작하기 버튼
                    // AppStorage의 isOnboardingActive의 값을 false로 바꿔, 다음 앱을 실행할 때 OnboardingView를 띄우지 않는다.
                }
                Button("시작하기") {
                    isOnboardingActive.toggle()
                    print("Start Btn Pressed !")
                }.buttonStyle(StartHomeButton())
                    .frame(maxHeight: .infinity, alignment: .bottom)
                    .padding(.bottom)
                    .font(Font.body.bold())
            }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(isOnboardingActive: .constant(true))
    }
}
