//
//  TextLinkButton.swift
//  Platzi
//
//  Created by Web Developer 01 on 11/24/25.
//

import SwiftUI


// MARK: - Reusable Text Button (for links)
struct TextButton: View {
    let title: String
    let action: () -> Void
    var isUnderlined: Bool = false
    var foregroundColor: Color = .black
    var font: Font = .subheadline
    
    var body: some View {
        Button(action: action) {
            if isUnderlined {
                Text(title)
                    .font(font)
                    .underline()
                    .foregroundColor(foregroundColor)
            } else {
                Text(title)
                    .font(font)
                    .foregroundColor(foregroundColor)
            }
        }
    }
}

#Preview {
    TextButton(title: "Link Button", action: {}, isUnderlined: true, foregroundColor: .red, font: .body)
}
