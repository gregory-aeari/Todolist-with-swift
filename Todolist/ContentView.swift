//
//  ContentView.swift
//  Todolist
//
//  Created by 신동민 on 2022/02/18.
//

import SwiftUI

struct ContentView: View {
    @State private var instring = ""
    
    var body: some View {
        VStack{
            Text("Hello, world")
                .padding()
            TextField("insert", text: $instring)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
