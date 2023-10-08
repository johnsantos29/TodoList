//
//  ListRowView.swift
//  TodoList
//
//  Created by John Erick Santos on 8/10/2023.
//

import SwiftUI

struct ListRowView: View {
    let title: String

    var body: some View {
        HStack {
            Image(systemName: "checkmark.circle")
            Text(title)
            Spacer()
        }
    }
}

#Preview {
    ListRowView(title: "This is the first item!")
}
