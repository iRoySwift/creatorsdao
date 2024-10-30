//
//  TodoView.swift
//  creatorsdao
//
//  Created by Roy on 10/29/24.
//

import SwiftUI
import SwiftData

struct TodoView: View {
    @StateObject private var viewModel = TodoViewModel()
    // MARK: - 4. 获取ModelContext
    @Environment(\.modelContext) private var context
    
    @Query var todos: [Todo] // 使用@Query监听数据变化
    
    var body: some View {
        VStack{
            TextField("请输入内容", text: $viewModel.text)
                .textFieldStyle(RoundedBorderTextFieldStyle.roundedBorder)
            
            Button(action: {
                viewModel.addTodo(context: context)
            }) {
                Text("add todo")
            }
            
            List {
                ForEach(todos, id: \.self.id) { todo in
                    Text(todo.title)
                }
                .onDelete { indexSet in
                    for index in indexSet {
                        viewModel.deleteTodo(todo: todos[index], context: context)
                    }
                    
                }
            }
            
            
        }
    }
}

#Preview {
    TodoView()
        .modelContainer(for: Todo.self)// 为预览提供modelcontext
}
