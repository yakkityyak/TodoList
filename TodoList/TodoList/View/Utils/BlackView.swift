//
//  BlackView.swift
//  TodoList
//
//  Created by Jakob Hjortshøj on 07/07/2022.
//

import SwiftUI

struct BlackView: View {
    var body: some View {
        VStack {
            Spacer()
        }
        .frame(minWidth: 0, maxWidth: nil, minHeight: 0, maxHeight: nil, alignment: .center)
        .background(.black)
        opacity(0.5)
        edgesIgnoringSafeArea(.all)
        onTapGesture {
            
        }
    }
}

struct BlackView_Previews: PreviewProvider {
    static var previews: some View {
        BlackView()
    }
}
