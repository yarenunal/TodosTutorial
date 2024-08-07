//
//  Todo.swift
//  TodosTutorial
//
//  Created by Yaren on 26.07.2024.
//

struct Todo: Identifiable, Codable {
    let id: Int
    let title: String
    let completed: Bool
}
