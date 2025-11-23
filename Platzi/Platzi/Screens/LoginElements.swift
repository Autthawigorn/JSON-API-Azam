//
//  LoginElement.swift
//  Platzi
//
//  Created by Autthawigorn Yortpiboot on 23/11/2568 BE.
//

import SwiftUI

struct BackgroundText: View {
    var body: some View {
        Text("SIGN IN")
            .font(.system(size: 100, weight: .black))
            .foregroundColor(Color.gray.opacity(0.1))
            .padding(.horizontal)
            .background(.red)
            .frame(maxWidth: .infinity)
    }
}

struct TitleText: View {
    var body: some View {
        Text("SIGN IN WITH YOUR\nNBA ID")
            .font(.system(size: 32, weight: .black))
            .padding(.horizontal)
    }
}

struct FormFields: View {
    @Binding var email: String
    @Binding var password: String
    @Binding var showPassword: Bool
    
    var body: some View {
        VStack(alignment: .leading, spacing: 30) {
            EmailField(email: $email)
            PasswordField(password: $password, showPassword: $showPassword)
        }
        .padding(.horizontal)
    }
}

struct EmailField: View {
    @Binding var email: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Email")
                .font(.subheadline)
                .foregroundColor(.gray)
            
//            TextField("alexsmith.mobbin@gmail.com", text: $email)
//                .textInputAutocapitalization(.never)
//                .autocorrectionDisabled()
            
            // ⬇️ จุดที่แก้ไข: สร้าง Placeholder ด้วย Text() เองและกำหนดสีเทา ⬇️
                        ZStack(alignment: .leading) {
                            if email.isEmpty {
                                Text("alexsmith.mobbin@gmail.com") // นี่คือ Placeholder ที่กำหนดเอง
                                    .foregroundColor(.gray) // กำหนดให้เป็นสีเทา
                            }
                            
                            TextField("", text: $email) // TextField จริงๆ ที่ไม่มี Placeholder กำหนดไว้
                                .textInputAutocapitalization(.never)
                                .autocorrectionDisabled()
                        }
                        // ⬆️ สิ้นสุดการแก้ไข ⬆️
            
            Rectangle()
                .fill(Color.gray.opacity(0.3))
                .frame(height: 1)
        }
    }
}

struct PasswordField: View {
    @Binding var password: String
    @Binding var showPassword: Bool
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Password")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            HStack {
                if showPassword {
                    TextField("", text: $password)
                } else {
                    SecureField("", text: $password)
                }
                
                Button(action: { showPassword.toggle() }) {
                    Image(systemName: showPassword ? "eye.slash" : "eye")
                        .foregroundColor(.gray)
                }
//                
//                Button(action: {}) {
//                    Image(systemName: "faceid")
//                        .foregroundColor(.gray)
//                }
            }
            
            Rectangle()
                .fill(Color.gray.opacity(0.3))
                .frame(height: 1)
        }
    }
}

struct ForgotPasswordButton: View {
    var body: some View {
        HStack {
            Spacer()
            Button(action: {}) {
                Text("Forgot password?")
                    .font(.subheadline)
                    .underline()
                    .foregroundColor(.black)
            }
        }
        .padding(.horizontal)
        .padding(.top, 8)
    }
}

struct SignInButton: View {
    var body: some View {
        Button(action: {}) {
            Text("Sign in")
                .font(.headline)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.black)
                .cornerRadius(0)
        }
        .padding(.horizontal)
    }
}

struct FooterText: View {
    var body: some View {
        VStack {
            Text("Your NBA Account is now NBA ID. If you've signed into the app before, use the same credentials here. Otherwise, **[Sign up](signup)**")
                .font(.footnote)
                .foregroundColor(.gray)
                .tint(.black)
        }
        .padding(.horizontal)
    }
}
