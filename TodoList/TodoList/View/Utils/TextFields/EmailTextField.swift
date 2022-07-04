//
//  EmaiRexrField.swift
//  TodoList
//
//  Created by Jakob Hjortshøj on 04/07/2022.
//

import SwiftUI

struct EmailTextField: View {
    
    @Binding var text: String
    
    var body: some View {
        
        CustomTextField(text: $text, placeholder: Text("Email"), imageName: "envelope")
            .padding()
            .background(Color(.init(white: 1, alpha: 0.15)))
            .cornerRadius(10)
            .foregroundColor(.white)

    }
        
        
}

struct EmaiRexrField_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            BackgroundGradientView()
            EmailTextField(text: .constant("Email"))
        }
    }
}
