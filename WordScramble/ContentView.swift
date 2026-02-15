//
//  ContentView.swift
//  WordScramble
//
//  Created by Eli J on 2/13/26.
//

import SwiftUI

struct ContentView: View {
    let people = ["C3PO", "Leia", "Luke", "Anakin"]

    var body: some View {
        List {
            Section("Section 1") {
                Text("Static Row 1")
                Text("Static Row 2")
            }

            Section("Section 2") {
                ForEach(0..<5) {
                    Text("Dynamic Row \($0)")
                }
            }
        }
        
        List(people, id: \.self) {
            Text($0)
        }
    }
}

#Preview {
    ContentView()
}
