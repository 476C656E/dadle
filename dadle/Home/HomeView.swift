//
//  HomeView.swift
//  dadle
//
//  Created by Glen on 2022/09/19.
//

import SwiftUI

struct HomeView: View {
    
    // 온보딩 페이지를 앱 설치 후 최초 실행할 때만 띄우도록 하는 변수
    // @AppStorage에 저장되어 앱 종료 후에도 유지됨.
    @AppStorage("onboarding") var isOnboardingActive: Bool = true
    
    var body: some View {
        Text("Home View")
            .fullScreenCover(isPresented: $isOnboardingActive) {
                OnboardingView(isOnboardingActive: $isOnboardingActive)
            }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
