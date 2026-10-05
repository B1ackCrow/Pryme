//
//  MainView.swift
//  Pryme
//
//  Created by Denis on 11.09.2026.
//

import SwiftUI

enum MainTab: Hashable {
    case home
    case history
    case more
}

struct MainView: View {
    @State private var selectedTab: MainTab = .home
    
    var body: some View {
        ZStack {
            Color("PrymeBackground")
                .ignoresSafeArea()
            
            TabView(selection: $selectedTab) {
                HomeView()
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                    .tag(MainTab.home)
                
                HistoryView()
                    .tabItem {
                        Label("History", systemImage: "clock")
                    }
                    .tag(MainTab.history)
                
                MoreView()
                    .tabItem {
                        Label("More", systemImage: "ellipsis")
                    }
                    .tag(MainTab.more)
            }
            .tint(Color("PrymePrimary"))
            .toolbarBackground(.black, for: .tabBar)
            .toolbarBackground(.visible, for: .tabBar)
        }

    
    }
}

#Preview {
    MainView()
}
