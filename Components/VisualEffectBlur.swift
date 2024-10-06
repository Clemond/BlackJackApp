//
//  VisualEffectBlur.swift
//  BlackJackApp
//
//  Created by Nicholas Nieminen Jönsson on 2024-10-06.
//

import Foundation
import SwiftUI

struct VisualEffectBlur: UIViewRepresentable {
    var style: UIBlurEffect.Style
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        return UIVisualEffectView(effect: UIBlurEffect(style: style))
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = UIBlurEffect(style: style)
    }
}
