//
//  TodoListApp.swift
//  TodoList
//
//  Created by manofsteel on 26/12/2024.
//

import SwiftUI
import FirebaseCore

@main
struct TodoListApp: App {
    init () {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
