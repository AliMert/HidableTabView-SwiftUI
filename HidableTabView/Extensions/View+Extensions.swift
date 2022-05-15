//
//  View+Extensions.swift
//  Bank
//
//  Created by Ali Mert Özhayta on 2.05.2022.
//

import protocol SwiftUI.View
import struct SwiftUI.AnyView

//MARK: For Showing/Hiding Tab Bar

public extension View {
    func showTabBar(animated: Bool = true) -> some View {
        return self.modifier(ShowTabBar(animated: animated))
    }
    func hideTabBar(animated: Bool = true) -> some View {
        return self.modifier(HiddenTabBar(animated: animated))
    }

    func shouldHideTabBar(_ hidden: Bool, animated: Bool = true) -> AnyView {
        if hidden {
            return AnyView(hideTabBar(animated: animated))
        } else {
            return AnyView(showTabBar(animated: animated))
        }
    }
}
