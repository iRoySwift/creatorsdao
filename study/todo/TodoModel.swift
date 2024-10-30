//
//  TodoModel.swift
//  creatorsdao
//
//  Created by Roy on 10/29/24.
//

import Foundation

struct Todo: Identifiable, Hashable, Codable {
    var id = UUID()
    var title: String
}
