//
//  LoginView.swift
//  TodoList
//
//  Created by Jakob Hjortshøj on 04/07/2022.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        
        NavigationView {
            ZStack{
                BackgroundGradientView()
                
                VStack{
                    LogoView()
                        .padding(.bottom, 25)
                    VStack(spacing: 20) {
                        EmailTextField(text: $email)
                        PasswordSecureField(text: $password, placeholder: "Password")
                    } // End of VStack
                    .padding(.horizontal, 32)
                    
                    HStack {
                        Spacer()
                        
                        Button {
                            //forgot pass action
                        } label: {
                            Text("Forgot Password")
                                .foregroundColor(.white)
                                .font(.system(size: 13, weight: .semibold))
                                .padding(.top)
                                .padding(.trailing, 28)
                        }
                    } // End of HStack
                    
                    Button {
                        // signin action
                    } label: {
                        AuthenticateButtonView(text: "Sign in")
                            .padding()
                    }
                    
                    
                    Spacer()
                    
                    NavigationLink(destination: SignupView()
                        .navigationBarHidden(true),
                                   label: {
                        HStack{
                            Text("Don' have an account")
                                .font(.system(size: 14))
                            Text("Sign up")
                                .font(.system(size: 14, weight: .semibold))
                        }
                        .foregroundColor(.white)
                    }
                                   
                                   
                    )
                    .padding(.bottom, 16)
                    
                    
                } // End of VStack
               
            }
        } // End of ZStack
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
