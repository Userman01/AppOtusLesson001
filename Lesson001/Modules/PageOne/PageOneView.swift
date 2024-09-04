//
//  PageOneView.swift
//  Lesson001
//
//  Created by Петр Постников on 03.09.2024.
//

import SwiftUI

struct PageOneView: View {
    
    @StateObject private var viewModel: PageOneViewModel = .init()
    @Binding var selectedTab: TabSelectionBindingModel
    
    var body: some View {
        VStack {
            ForEach(viewModel.presentModel, id: \.self) { model in
                Button {
                    selectedTab.tagSelection = 1
                    selectedTab.listSelection = model.tag
                } label: {
                    Text(model.title)
                }

            }
        }
    }
}
