//
//  CustomSecureField.swift
//  Platzi
//
//  Created by Web Developer 01 on 11/24/25.
//

import SwiftUI


// MARK: - Reusable Secure Field Component
struct CustomSecureField: View {
    let label: String
    let placeholder: String
    @Binding var text: String
    @Binding var showText: Bool
    var showToggleButton: Bool = true
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(label)
                .font(.subheadline)
                .foregroundColor(.gray)
            
            HStack {
                if showText {
                    TextField(placeholder, text: $text)
                } else {
                    SecureField(placeholder, text: $text)
                }
                
                if showToggleButton {
                    Button(action: { showText.toggle() }) {
                        Image(systemName: showText ? "eye.slash" : "eye")
                            .foregroundColor(.gray)
                    }
                }
            }
            
            Rectangle()
                .fill(Color.gray.opacity(0.3))
                .frame(height: 1)
        }
    }
}

// MARK: - Preview (Simple & Short)
#Preview {
    CustomSecureField(
        label: "Password",
        placeholder: "Type your password",
        text: .constant(""),
        showText: .constant(false)
    )
    .padding()
}

//// MARK: - Real States Preview
//#Preview {
//    // Create a wrapper view with @State
//    struct PreviewWrapper: View {
//        @State private var password = ""
//        @State private var showPassword = false
//        
//        var body: some View {
//            CustomSecureField(
//                label: "Password",
//                placeholder: "Type your password",
//                text: $password,
//                showText: $showPassword
//            )
//            .padding()
//        }
//    }
//    
//    return PreviewWrapper()
//}
