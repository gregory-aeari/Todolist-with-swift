//
//  ContentView.swift
//  Todolist
//
//  Created by 신동민 on 2022/02/18.
//

import SwiftUI

struct ContentView: View {
    
    @State private var todothing = ""
    
    struct Todolist: Identifiable {
        let id = UUID()
        var content: String
        var checked: Bool
    }
    
    @State private var todolists = [Todolist]()
    
    func appendlist() {
        let addlist = Todolist(content: todothing, checked: false)
        todolists.append(addlist)
        todothing = ""
    }
    
    var body: some View {
        VStack{
            Text("That's your future")
                .font(.title.bold())
            List{
                ForEach(0..<todolists.count, id: \.self) { i in
                    HStack{
                        Button(action: {}, label: {Image(systemName: "square")})
                        Text(todolists[i].content)
                        Spacer()
                        Button(action: {}, label: {Image(systemName: "trash")})
                    }
                }
            }
            HStack{
                Image(systemName: "square.and.pencil")
                TextField("future",
                          text: $todothing,
                          onCommit: {appendlist()}
                )
            }
            .frame(width: 300, height: 50, alignment: .center)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
