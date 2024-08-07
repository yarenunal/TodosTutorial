//
//  TodoViewModel.swift
//  TodosTutorial
//
//  Created by Yaren on 26.07.2024.
//
import SwiftUI
import Foundation
import Observation

@Observable
class TodoViewModel{
    
    var todos = [Todo]()
    var isLoading = false
    var errorMessage = ""
    private let todoService = TodoService()
    
    func fetchTodos() async {
        
        isLoading = true

        do {
            try await todos = todoService.fetchTodos()

        }catch {
            
                
                errorMessage = error.localizedDescription
            
        }
        
        
        isLoading = false
    }
    
}
