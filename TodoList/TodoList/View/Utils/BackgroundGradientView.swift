//
//  BackgroundGradientViewView.swift
//  TodoList
//
//  Created by Jakob Hjortshøj on 04/07/2022.
//

import SwiftUI

struct BackgroundGradientView: View {
    var body: some View {
     
        LinearGradient(gradient: Gradient(colors: [Color.blue, Color.blue.opacity(0.5)]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
        
    }
}

struct BackgroundGradientViewView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundGradientView()
    }
}
