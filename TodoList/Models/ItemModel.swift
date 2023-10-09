//
//  ItemModel.swift
//  TodoList
//
//  Created by John Erick Santos on 9/10/2023.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
