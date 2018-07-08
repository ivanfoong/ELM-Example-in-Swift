//
//  List.swift
//  ELM Example
//
//  Created by Ivan Foong on 7/8/18.
//  Copyright © 2018 Ivan Foong. All rights reserved.
//

import VirtualViews

struct List {
    var title: String
    var items: [Todo]
}

extension List {
    var tableView: TableView<TodosApp.Message> {
        let cells: [TableViewCell<TodosApp.Message>] = items.enumerated().map { el in
            let (index, todo) = el
            return TableViewCell<TodosApp.Message>(text: todo.title, onSelect: TodosApp.Message.toggleDone(index: index), accessory: todo.done ? .checkmark: .none, onDelete: nil)
        }
        return TableView<TodosApp.Message>(items: cells)
    }
}
