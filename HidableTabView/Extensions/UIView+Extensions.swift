//
//  UIView+Extensions.swift
//  HidableTabView
//
//  Created by Ali Mert Özhayta on 14.05.2022.
//

import UIKit.UIView

extension UIView {

    func allSubviews() -> [UIView] {
        var allSubviews = subviews
        for subview in subviews {
            allSubviews.append(contentsOf: subview.allSubviews())
        }
        return allSubviews
    }
}
