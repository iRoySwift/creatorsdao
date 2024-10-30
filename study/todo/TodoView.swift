//
//  TodoView.swift
//  creatorsdao
//
//  Created by Roy on 10/29/24.
//

import SwiftUI

struct TodoView: View {
//    @State private var text: String = ""
//    @State private var todos:[String] = []
    
    @StateObject private var viewModel = TodoViewModel()
    
    var body: some View {
        VStack{
            TextField("请输入内容", text: $viewModel.text)
                .textFieldStyle(RoundedBorderTextFieldStyle.roundedBorder)
            
            Button(action: {
                viewModel.addTodo()
            }) {
                Text("add todo")
            }
            
            List {
                ForEach(viewModel.todos, id: \.self.id) { todo in
                    Text(todo.title)
                }
                .onDelete(perform: viewModel.deleteTodo)
            }
            
            
        }
    }
    
//    private func deleteTodo(atOffsets: IndexSet) {
//        todos.remove(atOffsets: atOffsets)
//    }
}

#Preview {
    TodoView()
}
