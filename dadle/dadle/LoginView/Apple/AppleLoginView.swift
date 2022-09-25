//
//  AppleLoginView.swift
//  dadle
//
//  Created by 강민규 on 2022/09/25.
//

import SwiftUI

struct AppleLoginView: View {
    var body: some View {
        Button("Apple Login") {
            // Apple SDKAction
            print("Apple Btn pressed!")
        }.buttonStyle(AppleLoginButtonStyle())
    }
}

struct AppleLoginView_Previews: PreviewProvider {
    static var previews: some View {
        AppleLoginView()
    }
}
