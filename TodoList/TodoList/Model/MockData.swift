//
//  MockData.swift
//  TodoList
//
//  Created by Jakob Hjortshøj on 05/07/2022.
//

import Foundation

let appUser01 = AppUser(id: "1", uid: "1", firstName: "John", lastName: "Low", email: "Johnlow@gmail.com")

let todo01 = TODO(id: "1", ownerUid: "1", title: "Tomatoes", description: "Must be øko", TODOType: "Groceries", completed: false)

let todo02 = TODO(id: "2", ownerUid: "2", title: "Meat", description: "Muuh", TODOType: "Grocereies", completed: false)

let todo03 = TODO(id: "3", ownerUid: "3", title: "Do Homework", description: "", TODOType: "School", completed: true)
