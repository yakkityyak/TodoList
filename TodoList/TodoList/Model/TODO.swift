//
//  TODO.swift
//  TodoList
//
//  Created by Jakob Hjortshøj on 05/07/2022.
//

import Foundation
import SwiftUI
import FirebaseFirestoreSwift

struct TODO: Identifiable, Decodable {
    
    @DocumentID var id: String? = UUID().uuidString
    let ownerID: String
    let title: String
    let description: String
    let TODOType: String
    var completed: Bool
    var documentID: String? = ""
    
    func getType() -> SelectedButton {
        if TODOType == "Groceries" {
            return .groceries
        } else if TODOType == "Work" {
            return .work
        } else if TODOType == "School" {
            return .school
        } else if TODOType == "Home" {
            return .home
        } else if TODOType == "Personal" {
            return .personal
        } else {
            return .exstra
        }
    }
}
