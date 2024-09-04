//
//  PageTwoView.swift
//  Lesson001
//
//  Created by Петр Постников on 03.09.2024.
//

import SwiftUI

struct PageTwoView: View {
    
    @ObservedObject private var viewModel: PageTwoViewModel = .init()
    @EnvironmentObject private var navigationCoordinator: NavigationCoordinator
    @Binding var selectedTab: TabSelectionBindingModel
    
    var body: some View {
        List(viewModel.presentModel.cellTypes, id: \.self) { cellType in
            switch cellType {
            case let .text(string):
                Button {
                    navigationTo(string)
                } label: {
                    Text(string)
                }
            }
        }
        .onChange(of: selectedTab.listSelection) { _, newValue in
            if let newValue, viewModel.presentModel.cellTypes.count > newValue {
                let cellType = viewModel.presentModel.cellTypes[newValue]
                switch cellType {
                case let .text(string):
                    selectedTab.listSelection = nil
                    navigationTo(string)
                }
            }
        }
    }
    
    private func navigationTo(_ string: String) {
        navigationCoordinator.navigationTo(.text(string))
    }
}
