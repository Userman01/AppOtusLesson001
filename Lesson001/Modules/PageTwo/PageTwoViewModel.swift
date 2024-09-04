//
//  PageTwoViewModel.swift
//  Lesson001
//
//  Created by Петр Постников on 03.09.2024.
//

import Combine

class PageTwoViewModel: ObservableObject {
    @Published var presentModel: PageTwoPresentModel = .init(cellTypes: [])
    
    init() {
        setupPresentModel()
    }
    
    private func setupPresentModel() {
        presentModel = PageTwoPresentModel(cellTypes: [
            .text("Первый"),
            .text("Второй"),
            .text("Третий"),
            .text("Четвертый"),
            .text("Пятый"),
            .text("Шестой")
        ])
    }
}
