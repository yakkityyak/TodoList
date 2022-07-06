//
//  TODOButtonStack.swift
//  TodoList
//
//  Created by Jakob Hjortshøj on 06/07/2022.
//

import SwiftUI

struct TODOButtonStack: View {
    
    @ObservedObject var viewModel: TODOViewModel
    
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                TODOButton(buttonTtype: .all, viewModel: viewModel)
                
                TODOButton(buttonTtype: .groceries, viewModel: viewModel)
                
                TODOButton(buttonTtype: .work, viewModel: viewModel)
                
                TODOButton(buttonTtype: .school, viewModel: viewModel)
                
                TODOButton(buttonTtype: .home, viewModel: viewModel)
                
                TODOButton(buttonTtype: .personal, viewModel: viewModel)
                
                TODOButton(buttonTtype: .extra, viewModel: viewModel)
            }
        }
        
    }
}

struct TODOButtonStack_Previews: PreviewProvider {
    static var previews: some View {
        TODOButtonStack(viewModel: TODOViewModel())
    }
}

struct TODOButton: View {
    let buttonTtype: SelectedButton
    @ObservedObject var viewModel: TODOViewModel
    
    var body: some View {
        Button {
            viewModel.filterTODOSelected = buttonTtype
                
            if viewModel.filterTODOSelected != .all {
                viewModel.todosFiltered = viewModel.todos.filter { todo in
                    return todo.TODOType == viewModel.filterTODOSelected.rawValue
                }
            } else {
                viewModel.todosFiltered = viewModel.todos
            }
        } label: {
            Text("\(buttonTtype.getValue())")
                .foregroundColor(viewModel.filterTODOSelected == buttonTtype ? .white
                                 : Color(.systemGray))
                .frame(width: 100, height: 40)
                .background(buttonTtype == viewModel.filterTODOSelected ?
                            Color("lightBlue") : Color(.systemGray6))
                .cornerRadius(20)
        }

    }
}
