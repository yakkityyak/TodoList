//
//  DashboardView.swift
//  TodoList
//
//  Created by Jakob Hjortshøj on 05/07/2022.
//

import SwiftUI

struct DashboardView: View {
    
    let user: AppUser
    
    var body: some View {
        
        VStack {
            Text("DashboardView")
            Button {
                AuthViewModel.shared.signout()
            } label: {
                Text("log out")
            }
            .padding()

        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView(user: appUser01)
    }
}
