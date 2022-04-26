//
//  ContentView.swift
//  Todolist
//
//  Created by Vittorio Sironi on 22/04/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var todo: [ToDo] = [ // -> L'attributo @State ci permette di rendere la variabile sensibile ai cambiamenti
        ToDo(title: "Prima attività!", isCompleted: false),
        ToDo(title: "Seconda attività", isCompleted: true),
        ToDo(title: "Terza", isCompleted: false)
    ]
    
    var body: some View {
        NavigationView { // -> La navigation view ci permette di inserire bottoni, testi all'interno dello schermo in maniera ordinata
            List { // -> Crea una lista di oggetti
                ForEach($todo, id: \.self) { item in // -> Serve per fare dei loop, scorrendo le variabili di un array. L'id serve per identificare la singola variabile all'interno dell'array. Quindi stiamo dicendo che a variabile interna dell'array si identifica come se stessa. item è la variabile all'interno dell'array che il for sta scorrendo
                    ListRowView(todo: item) // -> Per mantenere il codice più ordinato creiamo una sub-view. Richiamandola come se fosse una funzione, ci appare a schermo il contenuto di ListRowView
                }
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Todo List") // -> Deve stare all'interno della navigation view altrimenti il titolo non appare
            .navigationBarItems(trailing:
                                    Button(action: {
                                        withAnimation(.spring()) {
                                            todo.append(ToDo(title: "Nuova attività", isCompleted: false)) // -> .append() aggiunge alla fine l'elemento
                                        }
                                    }, label: {
                                        Text("Add")
                                    })
            ) // -> Ci permette di aggiungere degli oggetti (come bottoni) sopra il titolo. leading: sono gli oggetti in alto a sinista,  trailing: sono gli oggetti in alto a destra
        }
    }
}

struct ContentView_Previews: PreviewProvider { // -> Le previews richiamano, in questo caso, ContentView() quindi quello che vediamo nel Canvas (l'iPhone su cui appare la schermata di fianco al codice) è la previews che richiamiamo
    static var previews: some View {
        ContentView()
    }
}
