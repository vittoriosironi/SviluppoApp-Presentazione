//
//  ListRowView.swift
//  Todolist
//
//  Created by Vittorio Sironi on 23/04/22.
//

import SwiftUI

struct ListRowView: View {
    
    @Binding var todo: ToDo // -> Rende la variabile che viene passata nella struct sensibile ai cambiamenti di questa struct
    
    var body: some View {
        HStack {
            Button {
                todo.isCompleted.toggle() // -> toogle
            } label: {
                Image(systemName: todo.isCompleted ? "checkmark.circle" : "circle")
                    .foregroundColor(todo.isCompleted ? Color.green : Color.red)
            }

            Text(todo.title)
            Spacer() // -> Fa uno spazio tutto a destra
        }
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(todo: .constant(ToDo(title: "First", isCompleted: true)))
    } 
}
