//
//  dadleApp.swift
//  dadle
//
//  Created by 강민규 on 2022/09/04.
//

import SwiftUI

import KakaoSDKAuth
import KakaoSDKCommon

@main
struct dadleApp: App {
    init() {
        // Kakao SDK Init
        KakaoSDK.initSDK(appKey: "298f3f8f42259cd80cd4c11099aee74b")
    }
    var body: some Scene {
        WindowGroup {
            OnboardingView()
                .onOpenURL { url in
                    if (AuthApi.isKakaoTalkLoginUrl(url)) {
                        _ = AuthController.handleOpenUrl(url: url)
                    }
                }
        }
    }
}
