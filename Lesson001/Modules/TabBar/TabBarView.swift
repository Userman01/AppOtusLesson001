//
//  TabBarView.swift
//  Lesson001
//
//  Created by Петр Постников on 03.09.2024.
//

import SwiftUI

struct TabBarView: View {
    
    @State private var tabSelection: TabSelectionBindingModel = .init(tagSelection: 0, listSelection: nil)
    
    var body: some View {
        TabView (selection: $tabSelection.tagSelection) {
            PageOneView(selectedTab: $tabSelection)
                .tag(0)
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            PageTwoView(selectedTab: $tabSelection)
                .tag(1)
                .tabItem {
                    Label("list", systemImage: "list.bullet")
                }
            PageThreeView()
                .tag(2)
                .tabItem {
                    Label("info", systemImage: "person")
                }
        }
    }
}
