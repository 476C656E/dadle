//
//  OnboardingView.swift
//  dadle
//
//  Created by 강민규, Glen on 2022/10/02.
//

import SwiftUI

// MARK: Onboarding Title Kraoke Effect

struct KaraokeEffect: View {
    @State private var maskedRectScale: Bool = false
    let titleText: String = "Dadle."
    
    var body: some View {
        ZStack {
            Text(titleText)
                .font(.system(size: 60, weight: .bold))
                .foregroundColor(.black)
            
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
    let ignoreSafeAreaColor = Color(.white)
    
    var body: some View {
        ZStack {
            ignoreSafeAreaColor
            VStack(alignment: .leading) {
                KaraokeEffect()
                
                Text("오늘은 무슨 테스트를 해볼까?")
                    .font(.system(size: 18, weight: .semibold))
                    .foregroundColor(.gray)
            }
            .offset(y: -50) // 오프셋이 아닌 다른 방식으로 위로 올릴 수 있는지 알아봐야함.
            
            // 온보딩 시작하기 버튼
            Button("시작하기") {
                isOnboardingActive.toggle()
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
