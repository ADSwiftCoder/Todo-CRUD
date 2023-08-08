//
//  NewTodoView.swift
//  Todo CRUD
//
//  Created by Adrian Menezes on 04/08/2023.
//

import SwiftUI

struct NewTodoView: View {
    
    @State private var todoTitle = ""
    @State private var todoSubtitle = ""
    @Binding var sourceArray: [Todo]
    @Environment(\.dismiss) var dismiss
    
    
    var body: some View {
        Form {
            Section("Task Info") {
                TextField("Title", text: $todoTitle)
                TextField("Subtitle", text: $todoSubtitle)
            }
            
            Section("Actions") {
                Button("Save") {
                    let todo = Todo(title: todoTitle, subtitle: todoSubtitle)
                    sourceArray.append(todo)
                    dismiss()
                    // TODO: (ha ha, TODO, get it) Save and dismiss
                }
                Button("Cancel", role: .destructive) {
                    dismiss()
                }
            }
        }
    }
}

struct NewTodoView_Previews: PreviewProvider {
    static var previews: some View {
        NewTodoView(sourceArray: .constant([]))
    }
}
