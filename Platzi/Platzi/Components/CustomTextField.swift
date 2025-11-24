//
//  TextField.swift
//  Platzi
//
//  Created by Web Developer 01 on 11/24/25.
//

import SwiftUI

// MARK: - Reusable Text Field Component
struct CustomTextField: View {
    let label: String
    let placeholder: String
    @Binding var text: String
    var keyboardType: UIKeyboardType = .default
    var autocapitalization: TextInputAutocapitalization = .sentences
    var autocorrection: Bool = true
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(label)
                .font(.subheadline)
                .foregroundColor(.gray)
            
            TextField(placeholder, text: $text)
                .keyboardType(keyboardType)
                .textInputAutocapitalization(autocapitalization)
                .autocorrectionDisabled(!autocorrection)
            
            Rectangle()
                .fill(Color.gray.opacity(0.3))
                .frame(height: 1)
        }
    }
}

#Preview {
    CustomTextField(label: "Test", placeholder: "Type you text", text: .constant("dummy"))
        .padding(.horizontal)
}
