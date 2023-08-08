//
//  TodoRowView.swift
//  Todo CRUD
//
//  Created by Adrian Menezes on 08/08/2023.
//

import SwiftUI

struct TodoRowView: View {
    @Binding var todo: Todo
    var body: some View {
        NavigationLink{
            
            TodoDetailView(todo: $todo)
            
        } label: {
            
            HStack {
                
                Image(systemName: todo.isCompleted ? "checkmark.circle.fill" : "circle")
                
                    .onTapGesture {
                        
                        todo.isCompleted.toggle()
                        
                    }
                
                VStack (alignment: .leading){
                    
                    Text(todo.title)
                    
                        .strikethrough(todo.isCompleted)
                    
                    Text(todo.subtitle)
                    
                        .font(.footnote)
                    
                        .foregroundColor(.blue)
                    
                        .strikethrough(todo.isCompleted)
                    
                }
                
            }
            
        }
    }
}

struct TodoRowView_Previews: PreviewProvider {
    static var previews: some View {
        TodoRowView(todo: .constant(Todo(title: "Testing")))
    }
}
