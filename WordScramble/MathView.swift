//
//  MathView.swift
//  WordScramble
//
//  Created by Eli J on 2/15/26.
//

import SwiftMath
import SwiftUI

struct MathView: UIViewRepresentable {
    var latex: String
    var fontSize: CGFloat = 24
    var alignment: MTTextAlignment = .left
    var labelMode: MTMathUILabelMode = .text

    func makeUIView(context: Context) -> MTMathUILabel {
        MTMathUILabel()
    }

    func updateUIView(_ view: MTMathUILabel, context: Context) {
        view.latex = latex
        view.font = MTFontManager().latinModernFont(withSize: fontSize)
        view.textAlignment = alignment
        view.labelMode = labelMode
        view.textColor = MTColor(Color.primary)
    }
}

//#Preview {
//    MathView()
//}
