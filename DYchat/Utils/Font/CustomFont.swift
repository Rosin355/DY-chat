//
//  CustomFont.swift
//  DYchat
//
//  Created by Romesh Singhabahu on 28/06/24.
//

import SwiftUI

enum VT323: String {
    case regular = "VT323-Regular"
}

extension Font.TextStyle {
    var size: CGFloat {
        switch self {
        case .largeTitle: return 60
        case .title: return 48
        case .title2: return 30
        case .title3: return 24
        case .headline, .body: return 22
        case .subheadline, .callout: return 20
        case .footnote: return 19
        case .caption, .caption2: return 17
        @unknown default:
            return 10
        }
    }
}
