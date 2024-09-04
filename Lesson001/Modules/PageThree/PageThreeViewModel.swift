//
//  PageThreeModelView.swift
//  Lesson001
//
//  Created by Петр Постников on 04.09.2024.
//

import Combine

class PageThreeViewModel: ObservableObject {
    
    @Published var presentModel: PageThreePresentModel = .init(text: "Model View", tittle: "Show Modal View")
}
