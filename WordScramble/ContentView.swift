//
//  ContentView.swift
//  WordScramble
//
//  Created by Eli J on 2/13/26.
//

import SwiftMath
import SwiftUI

struct ContentView: View {
    let people = ["C3PO", "Leia", "Luke", "Anakin"]
    let digits: [Double] = [42, 5932, 27, 2580]

    var body: some View {
        List {
            Section("Digits") {
                ForEach(digits, id: \.self) { digit in
                    Text(digit, format: .number)
                }
            }

            Section("Square Roots") {
                ForEach(digits, id: \.self) { digit in
                    MathView(
                        latex: #" \sqrt{\#(Int(digit))} "#,
                        fontSize: 20,
                        alignment: .left
                    )
                    .frame(height: 20)
                }
            }

            //            Section("Section 3: People") {
            //                ForEach(people, id: \.self) { person in
            //                    Text(person)
            //                }

            Section("Squares") {
                ForEach(digits, id: \.self) { digit in
                    Text(digit * digit, format: .number)
                }

            }
        }
    }
}

#Preview {
    ContentView()
}
