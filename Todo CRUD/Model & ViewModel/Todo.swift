//
//  Todo.swift
//  Todo CRUD
//
//  Created by Adrian Menezes on 08/08/2023.
//

import Foundation
struct Todo: Identifiable {
    
    let id = UUID()
    var title: String
    var subtitle = ""
    var isCompleted = false
    
}
