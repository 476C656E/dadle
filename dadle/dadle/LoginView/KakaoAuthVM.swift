//
//  KakaoAuthVM.swift
//  dadle
//
//  Created by Glen on 2022/09/26.
//

import Foundation
import Combine
import KakaoSDKAuth
import KakaoSDKUser

class KakaoAuthVM: ObservableObject {
    
    @Published var isLoggedIn : Bool = false
    
    // MARK: Kakao Logout
    
    @MainActor
    func kakaoLogout() {
        Task {
            if await handleKakaoLogout() {
                isLoggedIn = false
            }
        }
    }
    
    // Logout을 실행하는 함수
    func handleKakaoLogout() async -> Bool {
        await withCheckedContinuation { continuation in
            UserApi.shared.logout {(error) in
                if let error = error {
                    print(error)
                    continuation.resume(returning: false)
                }
                else {
                    print("logout() success.")
                    continuation.resume(returning: true)
                }
            }
        }
    }
    
    // MARK: Kakao Login
    
    func handleLoginWithKakaoTalkApp() async -> Bool {
        await withCheckedContinuation { continueation in
            UserApi.shared.loginWithKakaoTalk {(oauthToken, error) in
                if let error = error {
                    print(error)
                    continueation.resume(returning: false)
                }
                else {
                    print("loginWithKakaoTalk() success.")
                    //do something
                    _ = oauthToken
                    continueation.resume(returning: true)
                }
            }
        }
    }
    
    func handleLoginWithKakaoAccount() async -> Bool {
        await withCheckedContinuation { continueation in
            UserApi.shared.loginWithKakaoAccount {(oauthToken, error) in
                    if let error = error {
                        print(error)
                        continueation.resume(returning: false)
                    }
                    else {
                        print("loginWithKakaoAccount() success.")
                        //do something
                        _ = oauthToken
                        continueation.resume(returning: true)
                    }
                }
        }
    }
    
    @MainActor
    func handleKakaoLogin() {
        Task {
            // 카카오톡 설치 여부 확인 - 설치 되어있을 때
            if (UserApi.isKakaoTalkLoginAvailable()) {
                
                // 카카오 앱을 통해 로그인
                isLoggedIn = await handleLoginWithKakaoTalkApp()
            } else {
                // 설치 안되어있을 때
                // 카카오 웹뷰로 로그인
                isLoggedIn = await handleLoginWithKakaoAccount()
            }
        }
    }
}
