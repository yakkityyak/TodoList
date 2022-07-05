//
//  UserTextField.swift
//  TodoList
//
//  Created by Jakob Hjortshøj on 05/07/2022.
//

import SwiftUI

struct UserTextField: View {
    
    @Binding var text: String
    let placeholder: String
    
    var body: some View {
        
        CustomTextField(text: $text, placeholder:  Text(placeholder), imageName: "person")
            .padding()
            .background(Color(.init(white: 1, alpha: 0.15)))
            .foregroundColor(.white)
            .cornerRadius(10)
        
    }
}

struct UserTextField_Previews: PreviewProvider {
    static var previews: some View {
        
        ZStack {
        BackgroundGradientView()
        UserTextField(text: .constant(""), placeholder: "User")
        }
    }
}
