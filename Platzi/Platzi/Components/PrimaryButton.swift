//
//  PrimaryButton.swift
//  Platzi
//
//  Created by Web Developer 01 on 11/24/25.
//

import SwiftUI

// MARK: - Reusable Primary Button
struct PrimaryButton: View {
    let title: String
    let action: () -> Void
    var backgroundColor: Color = .black
    var foregroundColor: Color = .white
    var cornerRadius: CGFloat = 0
    var isDisabled: Bool = false
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.headline)
                .foregroundColor(foregroundColor)
                .frame(maxWidth: .infinity)
                .padding()
                .background(isDisabled ? backgroundColor.opacity(0.5) : backgroundColor)
                .cornerRadius(cornerRadius)
        }
        .disabled(isDisabled)
    }
}

#Preview {
    PrimaryButton(title: "Dummy Button", action: {}, backgroundColor: .cyan, foregroundColor: .yellow, cornerRadius: 0, isDisabled: false)
        .padding(.horizontal)
}
