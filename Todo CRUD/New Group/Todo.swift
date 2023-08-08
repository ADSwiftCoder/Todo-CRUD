//
//  Todo.swift
//  Todo CRUD
//
//  Created by Adrian Menezes on 31/07/2023.
//

import Foundation
struct Todo {
    let id = UUID()
    var title: String
    var subtitle = ""
    var isCompleted: Bool = false
}
