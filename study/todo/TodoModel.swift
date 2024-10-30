//
//  TodoModel.swift
//  creatorsdao
//
//  Created by Roy on 10/29/24.
//

import Foundation
import SwiftData

//struct Todo: Identifiable, Hashable, Codable {
//    var id = UUID()
//    var title: String
//}

// MARK: - 2. 使用Model装饰器，存储数据库格式
@Model
class Todo {
    var id = UUID()
    var title: String
    
    init(id: UUID = UUID(), title: String) {
        self.id = id
        self.title = title
    }
}
