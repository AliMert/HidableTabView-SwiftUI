//
//  FirstView.swift
//  HidableTabView
//
//  Created by Ali Mert Özhayta on 14.05.2022.
//

import SwiftUI

struct FirstView: View {
    @EnvironmentObject private var tabViewManager: TabViewManager

    var body: some View {
        VStack(spacing: 30) {
            Text("First View")
                .font(.title)
                .bold()
                .padding()
            
            Button {
                tabViewManager.currentTab = 1
            } label: {
                Text("Go to Second Tab")
            }

            Button {
                UITabBar.toogleTabBarVisibility()
            } label: {
                Text("Hide/Show Tab Bar")
            }
        }
        .maxWidth()
        .maxHeight()
        .background(.blue.opacity(0.3))
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
            .environmentObject(TabViewManager())
    }
}
