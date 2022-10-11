//
//  dadleApp.swift
//  dadle
//
//  Created by 강민규 on 2022/09/04.
//

import SwiftUI


import FirebaseCore
import KakaoSDKAuth
import KakaoSDKCommon

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()

        return true
    }
}

@main
struct dadleApp: App {
    
    // 파이어베이스 셋업 앱 딜리게이트 등록
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    // Config kakao 키값 불러오기
    let kakaoAppKey = Bundle.main.infoDictionary?["KAKAO_NATIVE_APP_KEY"] ?? ""

    init() {
        // Kakao SDK 초기화
        KakaoSDK.initSDK(appKey: kakaoAppKey as! String)
    }
    var body: some Scene {
        WindowGroup {
            // onOpenURL()을 사용해 커스텀 URL 스킴 처리
//            HomeView()
//                .onOpenURL { url in
//                    if (AuthApi.isKakaoTalkLoginUrl(url)) {
//                        _ = AuthController.handleOpenUrl(url: url)
//                    }
//                }
            TestView()
        }
    }
}
