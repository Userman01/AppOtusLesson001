//
//  ModalView.swift
//  Lesson001
//
//  Created by Петр Постников on 03.09.2024.
//

import SwiftUI
import UIKit

struct ModalView: UIViewRepresentable {
    
    @Binding var text: String
    @Binding var showModel: Bool

    func makeUIView(context: Context) -> ModalUIView {
        return ModalUIView()
    }
    
    func updateUIView(_ uiView: ModalUIView, context: Context) {
        uiView.configure(text: text) {
            showModel = false
        }
    }
}
