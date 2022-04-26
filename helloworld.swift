import Foundation

/// VARIABILI
/* In swift si possono creare variabili (il loro valore può variare) o costanti (il loro valore non è variabile)
Quindi creiamo la nostra prima variabile. In cpp normalmente scriveremmo, int numb = 5;
*/
var numb = 5
// Si nota subito la differenza, int non è inserito e non serve il ;. Infatti in swift il tipo si può omettere, perchè il compilatore è in grado di riconoscerlo. QUesta capacità è detta type inference
var number: Int = 5
// le costanti invece
let constant: Int = 5

// C'è una differenza tra variabili e costanti
number = 10
// cout << ... << endl;
print(number)
//constant = 2 -> ERRATA, le costanti non possono variare
// Notiamo che il codice ci segna un errore, quindi vediamo che il nostro codice viene compilato mentre lo scriviamo. (LLVM)

/// STRUCT
// Introduzione struct. Le struct è un gruppo di variabili, un contenitore di variabili. Per chi ha già fatto le classi sono molto simili anche se con alcne differenze. In particolare una classe è reference type, ovvero se euqagliamo una variabile con una variabile della classe queste due punteranno verso la stessa memoria e quindi se cambiamo la variabile della classe, di conseguenza cambierà anche l'altra variabile. Le classi sono invece value type, questa cosa non succede perchè è come se venisse creata una copia, quindi le due variabili non puntano lo stesso indirizzo di memoria
struct Persona {
    var nome: String // "ciao"
    var cognome: String
}

var Alice = Persona(nome: "Alice", cognome: "Brenna")
var Bob = Persona(nome: "Bob", cognome: "Casati")

// Vediamo quindi che abbiamo creato delle variabili che sono un'insieme di variabili, in particolare per riferirsi a una variabile basterà scrivere il nome del gruppo.nome
print(Alice.cognome)


/// LOOP
/*
 C++
 for(int i = 0; i < 5; i++) {}
 */
// Loop che va da 0 a 5
let array: [String] = ["Nome 1", "Nome 2", "Nome 3", "Nome 4", "Nome 5"]
print("LOOP 1")
for i in (0..<5) { print(array[i]) }

// Possiamo anche far scorrere direttamente l'array
print("\nLOOP 2")
for i in array { print(i) }

print("\nLOOP 3")
let persone: [Persona] = [Alice, Bob]
for i in persone { print(i.cognome) }
