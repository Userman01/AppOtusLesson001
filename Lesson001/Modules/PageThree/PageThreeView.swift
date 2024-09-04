//
//  PageThreeView.swift
//  Lesson001
//
//  Created by Петр Постников on 03.09.2024.
//

import SwiftUI

struct PageThreeView: View {
    
    @ObservedObject private var viewModel: PageThreeViewModel = .init()
    @State private var showModel = false
    
    var body: some View {
        Button(viewModel.presentModel.tittle) {
            showModel.toggle()
        }
        .sheet(isPresented: $showModel, content: {
            ModalView(text: $viewModel.presentModel.text, showModel: $showModel)
        })
    }
}
