//
//  ScrambleView.swift
//  WordScramble
//
//  Created by Eli J on 2/16/26.
//

import SwiftUI

struct ScrambleView: View {
    @State private var usedWords = [String]()
    @State private var rootWord = ""
    @State private var newWord = ""
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    TextField("Enter your word", text: $newWord)
                 }
                
                Section {
                    ForEach(usedWords, id: \.self) { word in
                        Text(word)
                    }
                }
            }
            .navigationTitle(rootWord)
        }
    }
}

#Preview {
    ScrambleView()
}
