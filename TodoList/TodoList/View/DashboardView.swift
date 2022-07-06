//
//  DashboardView.swift
//  TodoList
//
//  Created by Jakob Hjortshøj on 05/07/2022.
//

import SwiftUI

struct DashboardView: View {
    
    let user: AppUser
    
    @State var searchText: String = ""
    
    @ObservedObject var viewModel = TODOViewModel()
    
    var body: some View {
        
        ZStack {
            
            VStack {
                
                HStack {
                    Spacer()
                    Text("- TodoList -")
                        .font(.system(size: 24))
                        .fontWeight(.semibold)
                    Spacer()
                } // End of HStack
                .overlay{
                    HStack{
                        Spacer()
                        Button {
                            AuthViewModel.shared.signout()
                        } label: {
                            Text("Logout")
                                .foregroundColor(Color(.systemGray))
                        }
                        .padding(.trailing)

                    }
                } // End of HStack Overlay
                
                SearchBarView(searchText: $searchText)
                    .padding()
                
                TODOButtonStack(viewModel: viewModel)
                    .padding(.horizontal)
                    .padding(.bottom)
                
                if viewModel.todosFiltered.isEmpty {
                    AddTODOLogo()
                        .padding(.top)
                }
                
            } // end of VStack
            
        } // End of ZStack
        
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView(user: appUser01)
    }
}
