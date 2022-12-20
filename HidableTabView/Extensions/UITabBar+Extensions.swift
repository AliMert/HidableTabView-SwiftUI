//
//  UITabBar+Extensions.swift
//  HidableTabView
//
//  Created by Ali Mert Özhayta on 14.05.2022.
//

import UIKit.UITabBar

public extension UITabBar {

    // if tab View is used get tabBar 'isHidden' parameter value
    static func isHidden(_ completion: @escaping (Bool) -> Void)  {
        DispatchQueue.main.async {
            let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
            windowScene?.windows.first(where: { $0.isKeyWindow })?.allSubviews().forEach({ (v) in
                if let view = v as? UITabBar {
                    completion(view.isHidden)
                }
            })
        }
    }

    // if tab View is used toogle Tab Bar Visibility
    static func toogleTabBarVisibility(animated: Bool = true) {
        UITabBar.isHidden { isHidden in
            if isHidden {
                UITabBar.showTabBar(animated: animated)
            }
            else {
                UITabBar.hideTabBar(animated: animated)
            }
        }
    }

    // if tab View is used show Tab Bar
    static func showTabBar(animated: Bool = true) {
        DispatchQueue.main.async {
            let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
            windowScene?.windows.first(where: { $0.isKeyWindow })?.allSubviews().forEach({ (v) in
                if let view = v as? UITabBar {
                    view.setIsHidden(false, animated: animated)
                    updateFrame(view)
                }
            })
        }
    }

    // if tab View is used hide Tab Bar
    static func hideTabBar(animated: Bool = true) {
        DispatchQueue.main.async {
            let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
            windowScene?.windows.first(where: { $0.isKeyWindow })?.allSubviews().forEach({ (v) in
                if let view = v as? UITabBar {
                    view.setIsHidden(true, animated: animated)
                    updateFrame(view)
                }
            })
        }
    }
    
    private static func updateFrame(_ view: UIView) {
        if let sv =  view.superview {
            let currentFrame = sv.frame
            sv.frame = currentFrame.insetBy(dx: 0, dy: 1)
            sv.frame = currentFrame
        }
    }

    // logic is implemented for hiding or showing the tab bar with animation
    private func setIsHidden(_ hidden: Bool, animated: Bool) {
        let isViewHidden = self.isHidden

        if animated {
            if self.isHidden && !hidden {
                self.isHidden = false
                self.frame.origin.y = UIScreen.main.bounds.height + 200
            }

            if isViewHidden && !hidden {
                self.alpha = 0.0
            }

            UIView.animate(withDuration: 0.8, animations: {
                self.alpha = hidden ? 0.0 : 1.0
            })
            UIView.animate(withDuration: 0.6, animations: {

                if !isViewHidden && hidden {
                    self.frame.origin.y = UIScreen.main.bounds.height + 200
                }
                else if isViewHidden && !hidden {
                    self.frame.origin.y = UIScreen.main.bounds.height - self.frame.height
                }
            }) { _ in
                if hidden && !self.isHidden {
                    self.isHidden = true
                }
            }
        } else {
            if !isViewHidden && hidden {
                self.frame.origin.y = UIScreen.main.bounds.height + 200
            }
            else if isViewHidden && !hidden {
                self.frame.origin.y = UIScreen.main.bounds.height - self.frame.height
            }
            self.isHidden = hidden
            self.alpha = 1
        }
    }
}
