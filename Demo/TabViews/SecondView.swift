//
//  SecondView.swift
//  HidableTabView
//
//  Created by Ali Mert Özhayta on 14.05.2022.
//

import SwiftUI

struct SecondView: View {
    @EnvironmentObject private var tabViewManager: TabViewManager

    var body: some View {
        VStack(spacing: 30) {
            Text("Second View")
                .font(.title)
                .bold()
                .padding()

            Button {
                tabViewManager.currentTab = 0
            } label: {
                Text("Go to First Tab")
            }

            Button {
                UITabBar.toogleTabBarVisibility()
            } label: {
                Text("Hide/Show Tab Bar")
            }

        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
            .environmentObject(TabViewManager())
    }
}
