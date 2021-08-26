//
//  File.swift
//  File
//
//  Created by Ilya Belenkiy on 8/5/21.
//

import SwiftUI

#if canImport(UIKit)
import UIKit
import UIKitEx

@available(iOS 15.0, *)
public extension Color {
    init(_ color: Styling.Color) {
        self.init(UIColor(dynamicProvider: {
            switch $0.userInterfaceStyle {
            case .dark:
                return UIColor(red: 1.0 - color.red, green: 1.0 - color.green, blue: 1.0 - color.blue, alpha: color.opacity)
            default:
                return UIColor(red: color.red, green: color.green, blue: color.blue, alpha: color.opacity)
            }
        }))
    }

    init(hex: String) {
        self.init(.literal(hex: hex, opacity: 1.0))
    }
}

#endif
