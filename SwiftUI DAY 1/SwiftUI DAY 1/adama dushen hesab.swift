//
//  adama dushen hesab.swift
//  SwiftUI DAY 1
//
//  Created by sarxan bayramov on 30.09.22.
//

import SwiftUI

struct adama_dushen_hesab: View {
    @State private var amountCheck = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    
    let tipPercentages = [10,15,20,25,0]
    
    var totalPerPerson: Double{
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercentage)
        
        let tipValue = amountCheck / 100 * tipSelection
        let grandTotal = amountCheck + tipValue
        let amountPerPerson = grandTotal / peopleCount
        
        return amountPerPerson
    }
    
    var body: some View {
        NavigationView {
            Form{
                Section{
                    TextField("Amount", value: $amountCheck,format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                        .keyboardType(.decimalPad)
                    
                    Picker("Number of People", selection: $numberOfPeople){
                        ForEach(2..<100){
                            Text("\($0) people")
                        }
                    }
                }
                Section{
                    Picker("Tip percentage", selection: $tipPercentage){
                        ForEach(tipPercentages, id:\.self){
                            Text($0,format:.percent)
                        }
                    }
                    .pickerStyle(.segmented)
                }header: {
                    Text("How much tip do you want to leave")
                }
                
                Section{
                    Text(totalPerPerson,format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
                
            }
        }
    }
}

struct adama_dushen_hesab_Previews: PreviewProvider {
    static var previews: some View {
        adama_dushen_hesab()
    }
}
