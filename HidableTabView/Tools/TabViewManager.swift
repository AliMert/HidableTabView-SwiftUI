//
//  TabViewManager.swift
//  HidableTabView
//
//  Created by Ali Mert Özhayta on 14.05.2022.
//

import SwiftUI

class TabViewManager: ObservableObject {
    @Published var currentTab = 0

    init() {
        UITabBar.appearance().scrollEdgeAppearance = UITabBarAppearance.init(idiom: .unspecified)
    }
}
