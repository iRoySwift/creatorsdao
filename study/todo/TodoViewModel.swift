//
//  TodoViewModel.swift
//  creatorsdao
//
//  Created by Roy on 10/29/24.
//

import Foundation

class TodoViewModel: ObservableObject {
    @Published var todos: [Todo] = []
    @Published var text: String = ""
    
    private let todoskey = "todoskey"  // UserDefaults中存储任务的key
    
    init() {
        loadTodos()
    }
    
    func addTodo () {
        guard !text.isEmpty else { return }
        let todo = Todo(title: text)
        todos.append(todo)
        text = ""
        saveTodos()
    }
    
    func deleteTodo(at offsets: IndexSet){
        todos.remove(atOffsets: offsets)
        saveTodos()
    }
    
    //保存任务列表到UserDefaults
    func saveTodos(){
        if  let encodeTodos = try? JSONEncoder().encode(todos) {
            UserDefaults.standard.set(encodeTodos, forKey: todoskey)
        }
    }
    
    // 从UserDefault加载todos
    func loadTodos() {
        if let saveTodosData = UserDefaults.standard.data(forKey: todoskey), let decodeTodos = try? JSONDecoder().decode([Todo].self, from: saveTodosData) {
            todos = decodeTodos
        }
    }
}
