//
//  PageTwoPresentModel.swift
//  Lesson001
//
//  Created by Петр Постников on 04.09.2024.
//

import Foundation

struct PageTwoPresentModel {
    var cellTypes: [PageTwoPresentModelCellType]
}

enum PageTwoPresentModelCellType: Hashable {
    case text(String)
}
