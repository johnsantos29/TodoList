//
//  ListView.swift
//  TodoList
//
//  Created by John Erick Santos on 8/10/2023.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var listViewModel: ListViewModel

    var body: some View {
        List {
            ForEach(listViewModel.items) { item in
                ListRowView(item: item)
                    .onTapGesture {
                        withAnimation(.linear) {
                            listViewModel.updateItem(item: item)
                        }
                    }
            }
            .onDelete(perform: listViewModel.deleteItem)
            .onMove(perform: listViewModel.moveItem)
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
    .environmentObject(ListViewModel())
}
