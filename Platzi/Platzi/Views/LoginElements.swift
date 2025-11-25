//
//  LoginElement.swift
//  Platzi
//
//  Created by Autthawigorn Yortpiboot on 23/11/2568 BE.
//

import SwiftUI



// MARK: - Updated Login Components Using Reusable Elements
struct BackgroundText: View {
    var body: some View {
        VStack{
            Text("SIGN IN")
                .font(.system(size: 100, weight: .black))
                .foregroundColor(Color.gray.opacity(0.1))
                .padding(.horizontal)
            
        }
        .frame(height: 200)
        .hSpacing()
        //.vSpacing()
        .background(.red)
    }
}

struct TitleText: View {
    var body: some View {
        Text("SIGN IN WITH YOUR\nXXXXX ID")
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
            CustomTextField(
                label: "Email",
                placeholder: "alexsmith.mobbin@gmail.com",
                text: $email,
                keyboardType: .emailAddress,
                autocapitalization: .never,
                autocorrection: false
            )
            
            CustomSecureField(
                label: "Password",
                placeholder: "",
                text: $password,
                showText: $showPassword
            )
        }
        .padding(.horizontal)
    }
}

struct ForgotPasswordButton: View {
    var body: some View {
        HStack {
            Spacer()
            TextButton(
                title: "Forgot password?",
                action: {},
                isUnderlined: true
            )
        }
        .padding(.horizontal)
        .padding(.top, 8)
    }
}

struct SignInButton: View {
    @Environment(\.openURL) private var openURL
    var body: some View {
        PrimaryButton(
            title: "Sign in",
            action: {
                if let url = URL(string: "https://google.com") {
                    openURL(url)
                    print("open  \(url)")
                }
            }
        )
        .padding(.horizontal)
    }
}

struct FooterText: View {
    var body: some View {
        VStack {
            Text("Your XXX Account is now XXX ID. If you've signed into the app before, use the same credentials here. \nOtherwise, **[Sign up](signup)**")
                .font(.footnote)
                .foregroundColor(.gray)
                .tint(.black)
        }
        .padding(.horizontal)
    }
}


