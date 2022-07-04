//
//  LogoView.swift
//  TodoList
//
//  Created by Jakob Hjortshøj on 04/07/2022.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        
        VStack{
            Image("LoginLogo")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            
                Text("Todo List")
                .foregroundColor(.white)
                .font(.system(size: 25))
                .fontWeight(.semibold)
        }
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            BackgroundGradientView()
            LogoView()
        }
    }
}
