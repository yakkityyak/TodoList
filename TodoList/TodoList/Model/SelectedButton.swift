//
//  SelectedButton.swift
//  TodoList
//
//  Created by Jakob Hjortshøj on 05/07/2022.
//

import Foundation

enum SelectedButton: String {
    
    case all = "All"
    case groceries = "Groceries"
    case work = "Work"
    case school = "School"
    case home = "Home"
    case personal = "Personal"
    case extra = "Extra"
    
    func getValue() -> String {
        return self.rawValue
    }
}
