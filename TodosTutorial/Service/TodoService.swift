//
//  TodoService.swift
//  TodosTutorial
//
//  Created by Yaren on 29.07.2024.
//

import Foundation

class TodoService {
    
    
    func fetchTodos() async throws -> [Todo] {
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/todos") else {
            throw URLError(.badURL)
        }
        
        do {
            
            let (data, _) = try await URLSession.shared.data(from: url)
            let todoResponse = try JSONDecoder().decode([Todo].self, from: data)
            return todoResponse
        }
    }
}


