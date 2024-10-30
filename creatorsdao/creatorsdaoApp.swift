//
//  creatorsdaoApp.swift
//  creatorsdao
//
//  Created by Roy on 10/24/24.
//

import SwiftUI
import SwiftData

@main
struct creatorsdaoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                // MARK: - 1. 配置modelcontainer
                .modelContainer(for: Todo.self)
        }
    }
}
