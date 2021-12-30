//
//  TaskRow.swift
//  TodoApp
//
//  Created by Haik Divanyan on 12/26/21.
//

import SwiftUI

struct TaskRow: View {
    var task: String
    var isCompleted: Bool
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: isCompleted ? "checkmark.circle" : "circle")
            
            Text(task)
        }
    }
}

struct TaskRow_Previews: PreviewProvider {
    static var previews: some View {
        TaskRow(task: "finish this", isCompleted: true)
    }
}
