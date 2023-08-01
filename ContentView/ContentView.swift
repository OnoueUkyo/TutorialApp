//
//  ContentView.swift
//  ContentView
//
//  Created by OnoueUkyo on 2023/07/25.
//

import SwiftUI

struct ContentView: View {
    @State var showingPicker = true
    var body: some View {
        TabView {
            HomeView().tabItem {
                Text("Home")
                Image(systemName: "house")
            }
            SearchView().tabItem {
                Text("Search")
                Image(systemName: "magnifyingglass")
            }
            PostView(showingPicker: true).tabItem {
                Text("Add")
                Image(systemName: "plus.app")
            }
            NoticeView().tabItem {
                Text("Reel")
                Image(systemName: "play.tv.fill")
            }
            ProfileView().tabItem {
                Text("Profile")
                Image(systemName: "circle.fill")
            }
        }.accentColor(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
