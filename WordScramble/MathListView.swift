//
//  ContentView.swift
//  WordScramble
//
//  Created by Eli J on 2/13/26.
//

import SwiftMath
import SwiftUI

struct MathListView: View {
    let people = ["C3PO", "Leia", "Luke", "Anakin"]
    let digits: [Double] = [46, 5932, 271, 535]

    var body: some View {
        List {
            Section("Digits") {
                ForEach(digits, id: \.self) { digit in
                    Text(digit, format: .number)
                }
            }

            Section("Square Roots") {
                ForEach(digits, id: \.self) { digit in
                    let root = digit.squareRoot()
                    let twoDP = root.formatted(
                        .number.precision(.fractionLength(4))
                    )
                    MathView(
                        latex:
                            #" \sqrt{\#(Int(digit))} \approx \#(twoDP) "#,
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
    MathListView()
}
