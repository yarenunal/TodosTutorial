//
//  ContentView.swift
//  TodosTutorial
//
//  Created by Yaren on 26.07.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                TodoListView()
            }
            .navigationTitle("Yapılacaklar")
        }

    }
}

#Preview {
    ContentView()
}
