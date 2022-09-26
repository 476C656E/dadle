//
//  AppleLoginView.swift
//  dadle
//
//  Created by 강민규 on 2022/09/25.
//

import SwiftUI

struct AppleLoginView: View {
    @Environment(\.window) var window : UIWindow?
    @State private var appleCoordinator : AppleCoordinator?
    
    var body: some View {
        Button("Apple Login") {
            // Apple SDKAction
            appleLogin()
        }.buttonStyle(AppleLoginButtonStyle())
    }
    
    func appleLogin() {
        appleCoordinator = AppleCoordinator(window: window)
        appleCoordinator?.startAppleLogin()
    }
}

struct AppleLoginView_Previews: PreviewProvider {
    static var previews: some View {
        AppleLoginView()
    }
}
