//
//  ContentView.swift
//  HidableTabView
//
//  Created by Ali Mert Özhayta on 10.05.2022.
//

import SwiftUI

struct ContentView: View {

    @ObservedObject private var tabViewManager = TabViewManager()

    var body: some View {
        TabView(selection: $tabViewManager.currentTab) {
            FirstView()
                .environmentObject(tabViewManager)
                .tag(0)
                .tabItem {
                    Label("First View", systemImage: "house")
                }

            SecondView()
                .environmentObject(tabViewManager)
                .showTabBar()
                .tag(1)
                .tabItem {
                    Label("Second View", systemImage: "car")
                }

            ThirdView()
                .environmentObject(tabViewManager)
                .hideTabBar(animated: false)
                .tag(2)
                .tabItem {
                    Label("Third View", systemImage: "timer")
                }


            FourthView()
                .environmentObject(tabViewManager)
                .showTabBar(animated: false)
                .tag(3)
                .tabItem {
                    Label("Fourth View", systemImage: "flame")
                }
        }
        .hideTabBar(animated: false)

    // MARK: Another way Change Tab Bar Visibility
    /*
        You can even change tab bar visibility from any where in the application
        For instance;
            instead of using '.hideTabBar(animated: false)',
            you can set it in '.onAppear'
     */
//        .onAppear {
//            UITabBar.hideTabBar(animated: false)
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
