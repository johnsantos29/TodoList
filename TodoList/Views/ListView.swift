//
//  ListView.swift
//  TodoList
//
//  Created by John Erick Santos on 8/10/2023.
//

import SwiftUI

struct ListView: View {
    @State var items: [ItemModel] = [
        ItemModel(title: "This is the first item!", isCompleted: false),
        ItemModel(title: "This is the second", isCompleted: true),
        ItemModel(title: "Third", isCompleted: false),
    ]

    var body: some View {
        List {
            ForEach(items) { item in
                ListRowView(item: item)
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
