//
//  EnvironmentKey.swift
//  dadle
//
//  Created by 강민규 on 2022/09/25.
//

import Foundation
import SwiftUI

struct WindowKey: EnvironmentKey{
    struct Value {
        weak var value : UIWindow?
    }
    
    static let defaultValue: Value = .init(value: nil)
}

extension EnvironmentValues {
    var window: UIWindow? {
        get {
            return self[WindowKey.self].value
        }
        set {
            self[WindowKey.self] = .init(value: newValue)
        }
    }
}
