//
//  State property.swift
//  SwiftUI DAY 1
//
//  Created by sarxan bayramov on 30.09.22.
//

import SwiftUI

struct State_property: View {
   @State var buttonTap = 0
    var body: some View {
        Button("button Tapped : \(buttonTap)"){
            buttonTap += 1
        }
        .foregroundColor(.white)
        .padding()
        .background(Color.blue)
        .cornerRadius(20)
    }
}

struct State_property_Previews: PreviewProvider {
    static var previews: some View {
        State_property()
    }
}
