//
//  MVVMTodoListApp.swift
//  MVVMTodoList
//
//  Created by κΉμν on 2022/09/18.
//

import SwiftUI

@main
struct MVVMTodoListApp: App {
    @StateObject var TodoViewManager = TodoManager()
    var body: some Scene {
        WindowGroup {
            ContentView(todoManager: TodoViewManager)
        }
    }
}
