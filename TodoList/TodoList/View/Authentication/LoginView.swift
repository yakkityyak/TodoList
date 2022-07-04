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
        
        ZStack{
            BackgroundGradientView()
            
            VStack{
                LogoView()
                    .padding(.bottom, 25)
                VStack(spacing: 20) {
                    EmailTextField(text: $email)
                        .padding(.horizontal, 32)
                    
                    
                } // End of VStack
            } // End of VStack
        } // End of ZStack
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
