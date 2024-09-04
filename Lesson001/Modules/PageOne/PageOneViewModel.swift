//
//  PageOneViewModel.swift
//  Lesson001
//
//  Created by Петр Постников on 03.09.2024.
//

import Combine

class PageOneViewModel: ObservableObject {
    
    @Published var presentModel: [PageOnePresentModel] = .init()
    
    init() {
        setupPresentModel()
    }
    
    private func setupPresentModel() {
        presentModel = [
            PageOnePresentModel(title: "Move to list 1", tag: 0),
            PageOnePresentModel(title: "Move to list 2", tag: 1),
            PageOnePresentModel(title: "Move to list 3", tag: 2),
            PageOnePresentModel(title: "Move to list 4", tag: 3),
            PageOnePresentModel(title: "Move to list 5", tag: 4),
            PageOnePresentModel(title: "Move to list 6", tag: 5)
        ]
    }
}
