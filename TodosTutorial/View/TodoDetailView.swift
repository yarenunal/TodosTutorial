//
//  TodoDetailView.swift
//  TodosTutorial
//
//  Created by Yaren on 29.07.2024.
//

import SwiftUI

struct TodoDetailView: View {
    let todo: Todo
    var body: some View {
        Text(todo.title)
            .font(.largeTitle)
            .padding()
        Text(todo.completed ? "Tamamlandı" : "Tamamlanmadı")
    }
}

#Preview {
    TodoDetailView(todo: Todo(id: 23, title: "Mutfak Alışverişi", completed: false))
}
