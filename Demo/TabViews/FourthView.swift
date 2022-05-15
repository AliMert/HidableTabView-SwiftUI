//
//  FourthView.swift
//  HidableTabView
//
//  Created by Ali Mert Özhayta on 14.05.2022.
//

import SwiftUI

struct FourthView: View {
    @EnvironmentObject private var tabViewManager: TabViewManager

    var body: some View {
        VStack(spacing: 30) {
            Text("Always Show Tab")
                .font(.title)
                .bold()
                .padding()
            
            Button {
                tabViewManager.currentTab = 2
            } label: {
                Text("Go to Never Show Tab")
            }
        }
    }
}

struct FourthView_Previews: PreviewProvider {
    static var previews: some View {
        FourthView()
            .environmentObject(TabViewManager())
    }
}
