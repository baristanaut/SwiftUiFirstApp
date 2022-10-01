//
//  For Each loop.swift
//  SwiftUI DAY 1
//
//  Created by sarxan bayramov on 30.09.22.
//

import SwiftUI

struct For_Each_loop: View {
    
    let students = ["harry","hermione","ron"]
    @State private var selectedStudets = "ron"
    
    var body: some View {
        NavigationView {
            Form{
                Picker("Selet your Student", selection: $selectedStudets) {
                    ForEach(students, id: \.self){
                        Text($0)
                    }
                }
                
            }

        }

    }
}

struct For_Each_loop_Previews: PreviewProvider {
    static var previews: some View {
        For_Each_loop()
    }
}
