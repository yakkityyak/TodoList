//
//  SignupView.swift
//  TodoList
//
//  Created by Jakob Hjortshøj on 04/07/2022.
//

import SwiftUI

struct SignupView: View {
    
    @State var firstName = ""
    @State var lastName = ""
    @State var email = ""
    @State var password = ""
    @State var confirmPassword = ""
    
    @Environment(\.presentationMode) var mode
    
    var body: some View {
        
        ZStack {
            BackgroundGradientView()
            
            VStack {
                LogoView()
                    .padding(.bottom, 25)
                
                VStack(spacing: 20) {
                    
                    UserTextField(text: $firstName, placeholder: "First Name")
                    UserTextField(text: $lastName, placeholder: "Last Name")
                    EmailTextField(text: $email)
                    PasswordSecureField(text: $password, placeholder: "Password")
                    PasswordSecureField(text: $confirmPassword, placeholder: "Confirm Password")
                    
                } // end of VStack
                .padding(.horizontal, 32)
                
                Button {
                    // sign up action
                } label: {
                    AuthenticateButtonView(text: "Sign Up")
                        .padding()
                }
                
                Spacer()
                
                Button {
                    mode.wrappedValue.dismiss()
                } label: {
                    HStack{
                        Text("Already have an account?")
                            .font(.system(size: 14))
                        Text("Sign in")
                            .font(.system(size: 14, weight: .semibold))
                    }
                    .foregroundColor(.white)
                }
                .padding(.bottom, 16)
                
            }// end of VStack
           
        }// end of ZStack
        
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
