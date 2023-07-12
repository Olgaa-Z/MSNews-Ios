//
//  ContentView.swift
//  MSNews
//
//  Created by visionet on 11/07/23.
//

import SwiftUI

struct ContentView: View {
//    private var items: FetchedResults<Item>

    var body: some View {
        TabView {
            NewsTabView()
                .tabItem {
                    Label("News", systemImage: "newspaper")
                }
            
            SearchTabView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
            
            BookmarkTabView()
                .tabItem {
                    Label("Saved", systemImage: "bookmark")
                }
            MoreeTabView()
                .tabItem{
                    Label("Other", systemImage: "ellipsis")
                }
        }
    }


}
