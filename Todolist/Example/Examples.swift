//
//  Examples.swift
//  Todolist
//
//  Created by Vittorio Sironi on 25/04/22.
//

import SwiftUI

struct Examples: View {
    var body: some View {
        HStack {
            Text("Hello, World!")
            Text("2")
        }
        
        VStack {
            Text("Hello, World!")
            Text("2")
        }
        
        ZStack {
            Text("Hello, World!")
            Text("2")
        }
    }
}

struct Examples_Previews: PreviewProvider {
    static var previews: some View {
        Examples()
    }
}
