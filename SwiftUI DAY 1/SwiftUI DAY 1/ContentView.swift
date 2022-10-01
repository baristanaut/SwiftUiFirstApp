//
//  ContentView.swift
//  SwiftUI DAY 1
//
//  Created by sarxan bayramov on 30.09.22.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        NavigationView{
            Form{
                Section("Navigator"){
                    HStack{
                        Text("Haqqinda")
                        Spacer()
                        Image(systemName: "globe")
                            .foregroundColor(.accentColor)
                    }
                    Text("Hello world")
                    Text("Hello world")
                    Text("Hello world")
                    Text("Hello world")
                }
                .foregroundColor(.red)
                Section("Functions"){
                    Text("Hello world")
                    Text("Hello world")
                    Text("Hello world")
                    Text("Hello world")
                    Text("Hello world")
                }.foregroundColor(.blue)
            }
            .navigationTitle("SwiftUI")
            .navigationBarTitleDisplayMode(.automatic)
            
        }
        
        
    
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
