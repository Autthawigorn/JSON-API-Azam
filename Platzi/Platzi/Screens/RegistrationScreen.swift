//
//  RegistrationScreen.swift
//  Platzi
//
//  Created by Autthawigorn Yortpiboot on 23/11/2568 BE.
//

import SwiftUI

struct RegistrationScreen: View {
    
    @State private var name = ""
    @State private var email = ""
    @State private var password = ""
    @State private var showPassword = false
    
    var body: some View {
        
        ZStack {
            Color(.systemGray6).ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 0) {
                    
                    // FULL BLEED TOP SECTION
                    BackgroundText()
                        .background(
                            // This extends the red background up into the overscroll area
                            Color.red
                                .frame(height: 600)   // amount of overscroll space
                                .offset(y: -300)
                        )
                    
                    // NORMAL CONTENT SECTION
                    VStack(alignment: .leading, spacing: 24) {
                        
                        TitleText()
                        
                        FormFields(email: $email,
                                   password: $password,
                                   showPassword: $showPassword)
                        
                        SignInButton()
                        
                        FooterText()
                        
                        Spacer(minLength: 0)
                        
                    }
                    .padding(.horizontal, 24)
                    .padding(.top, 32)
                }
            }
        }
        .background(.red)
        .ignoresSafeArea(edges:.top)
       
    }
}



#Preview {
    RegistrationScreen()
}
