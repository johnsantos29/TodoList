//
//  TodoListApp.swift
//  TodoList
//
//  Created by John Erick Santos on 8/10/2023.
//

import SwiftUI

@main
struct TodoListApp: App {
    @StateObject var listViewModel = ListViewModel()

    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
