//
//  ShowTabBar.swift
//  HidableTabView
//
//  Created by Ali Mert Özhayta on 14.05.2022.
//

import SwiftUI

struct ShowTabBar: ViewModifier {
    var animated = true
    func body(content: Content) -> some View {
        return content.padding(.zero).onAppear {
            UITabBar.showTabBar(animated: animated)
        }
    }
}
