//
//  TodoViewModel.swift
//  creatorsdao
//
//  Created by Roy on 10/29/24.
//

import Foundation
import SwiftData

class TodoViewModel: ObservableObject {

    // MARK: - 3. TodoModel存储到数据库，不需要UserData了, 使用ModelContext操作数据
    
//    @Published var todos: [Todo] = []
    @Published var text: String = ""
    
//    private let todoskey = "todoskey"  // UserDefaults中存储任务的key
    
    
//    init() {
//        loadTodos()
//    }
    
    func addTodo (context:ModelContext) {
        guard !text.isEmpty else { return }
        let todo = Todo(title: text)
        text = ""
//        todos.append(todo)
//        saveTodos()
        context.insert(todo) // 使用ModelContext插入数据
    }
    
    func deleteTodo(todo: Todo, context:ModelContext){
//        todos.remove(atOffsets: offsets)
//        saveTodos()
        context.delete(todo) // 使用ModelContext删除数据
    }
    
//    //保存任务列表到UserDefaults
//    func saveTodos(){
//        if  let encodeTodos = try? JSONEncoder().encode(todos) {
//            UserDefaults.standard.set(encodeTodos, forKey: todoskey)
//        }
//    }
//    
//    // 从UserDefault加载todos
//    func loadTodos() {
//        if let saveTodosData = UserDefaults.standard.data(forKey: todoskey), let decodeTodos = try? JSONDecoder().decode([Todo].self, from: saveTodosData) {
//            todos = decodeTodos
//        }
//    }
}
