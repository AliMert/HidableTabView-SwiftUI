//
//  ThirdView.swift
//  HidableTabView
//
//  Created by Ali Mert Özhayta on 14.05.2022.
//

import SwiftUI

struct ThirdView: View {
    @EnvironmentObject private var tabViewManager: TabViewManager

    var body: some View {
        VStack(spacing: 30) {
            Text("Never Show Tab")
                .font(.title)
                .bold()
                .padding()

            Button {
                tabViewManager.currentTab = 3
            } label: {
                Text("Go to Always Never Tab")
            }
        }
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
            .environmentObject(TabViewManager())
    }
}
