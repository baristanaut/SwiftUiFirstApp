//
//  showAlert.swift
//  SwiftUI DAY 1
//
//  Created by sarxan bayramov on 01.10.22.
//

import SwiftUI

struct showAlert: View {
    @State private var showAlert = false
    var body: some View {
        Button("Show Alert"){
            showAlert = true
        }
        .alert("Important Message",isPresented: $showAlert) {
            Button("Delete", role: .destructive){}
            Button("Cancel",role: .cancel){}
        }message: {
            Text("salam Necesen?")
        }
    }
}

struct showAlert_Previews: PreviewProvider {
    static var previews: some View {
        showAlert()
    }
}
