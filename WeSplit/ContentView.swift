//
//  ContentView.swift
//  WeSplit
//
//  Created by hanifan nurul haq on 08/03/24.
//

import SwiftUI

struct ContentView: View {
    
    let tipPercentage = [10, 15, 20, 15, 0]
    
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPecentage = 0
    
    var body: some View {
        Form {
            Section {
                TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                    .keyboardType(.decimalPad)
            }
            
            Section {
                Text(checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
            }
        }
    }
}

#Preview {
    ContentView()
}
