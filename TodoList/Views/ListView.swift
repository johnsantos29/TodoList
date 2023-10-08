//
//  ListView.swift
//  TodoList
//
//  Created by John Erick Santos on 8/10/2023.
//

import SwiftUI

struct ListView: View {
    @State var items: [String] = [
        "This is the first item!",
        "This is the second",
        "Third",
    ]

    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List 📝")
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                EditButton()
            }
            ToolbarItem(placement: .topBarTrailing) {
                NavigationLink(value: "Add") {
                    Text("Add")
                }
            }
        }
        .navigationDestination(for: String.self) { _ in
            AddView()
        }
    }
}

#Preview {
    NavigationStack {
        ListView()
    }
}
