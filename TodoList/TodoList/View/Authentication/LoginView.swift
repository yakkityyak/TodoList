//
//  LoginView.swift
//  TodoList
//
//  Created by Jakob Hjortshøj on 04/07/2022.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        
        ZStack{
            BackgroundGradientView()
            
            VStack{
                LogoView()
            }
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
