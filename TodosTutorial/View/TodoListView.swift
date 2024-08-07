//
//  TodoListView.swift
//  TodosTutorial
//
//  Created by Yaren on 26.07.2024.
//

import SwiftUI

struct TodoListView: View {
    @State private var vm = TodoViewModel()
    var body: some View {
        
        VStack {
            if vm.isLoading {
                ProgressView()
            }else if !vm.errorMessage.isEmpty{
                ContentUnavailableView("Hata Oluştu!", systemImage: "xmark.circle", description: Text(vm.errorMessage))
                    .foregroundStyle(.red)
                
            }
            
            else {
                List(vm.todos) { todo in
                    
                    NavigationLink(destination: {
                        TodoDetailView(todo: todo)
                    }, label: {
                        HStack {
                            Image(systemName: "\(todo.id).circle")
                                .font(.title)
                                .foregroundStyle(.blue)
                            
                            Text(todo.title)
                            Spacer()
                            Image(systemName: todo.completed ? "checkmark.circle.fill" : "circle")
                                .foregroundStyle(todo.completed ? .green : .black)
                                .font(.title2)
                        }
                    }) 
                    
                    
                }
            }
        }
        .task {
            await vm.fetchTodos()
        }
        
    }
}

#Preview {
    TodoListView()
}
