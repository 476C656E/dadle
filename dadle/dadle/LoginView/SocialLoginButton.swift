//
//  SocialLoginButton.swift
//  dadle
//
//  Created by Whiskey on 2022/09/06.
//

import SwiftUI

struct SocialLoginButton: View {
    var body: some View {
        Button {
            // Kakao SDK Action
        } label : {
            Text("kakao Login")
        }
    }
}

struct SocialLoginButton_Previews: PreviewProvider {
    static var previews: some View {
        SocialLoginButton()
    }
}
