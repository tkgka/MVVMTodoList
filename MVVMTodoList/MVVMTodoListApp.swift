//
//  MVVMTodoListApp.swift
//  MVVMTodoList
//
//  Created by 김수환 on 2022/09/18.
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
