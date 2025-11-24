//
//  RegistrationScreen.swift
//  Platzi
//
//  Created by Autthawigorn Yortpiboot on 23/11/2568 BE.
//

import SwiftUI

struct RegistrationScreen: View {
    
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var showPassword: Bool = false
    
    var body: some View {
        ZStack {
            Color(.systemGray6)
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 0) {
                
                BackgroundText()
                
                Spacer().frame(height: 20)
                
                TitleText()
                
                Spacer().frame(height: 40)
                
                FormFields(email: $email, password: $password, showPassword: $showPassword)
                
                
                Spacer().frame(height: 30)
                
                SignInButton()
                
                Spacer().frame(height: 20)
                
                PrimaryButton(
                    title: "Dummy",
                    action: {print("Dummy")},
                    backgroundColor: .red
                )
                .padding(.horizontal)
                
                Spacer().frame(height: 20)
                
                FooterText()
                
                Spacer()
            }
            //.padding(.horizontal)
        }
    }
}



#Preview {
    RegistrationScreen()
}
