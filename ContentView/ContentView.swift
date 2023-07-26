//
//  ContentView.swift
//  ContentView
//
//  Created by OnoueUkyo on 2023/07/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            FirstView().tabItem {
                Text("Home")
                Image(systemName: "house")
            }
            SecondView().tabItem {
                Text("Search")
                Image(systemName: "magnifyingglass")
            }
            ThirdView().tabItem {
                Text("Add")
                Image(systemName: "plus.app")
            }
            ThirdView().tabItem {
                Text("Reel")
                Image(systemName: "play.tv.fill")
            }
            ThirdView().tabItem {
                Text("Profile")
                Image(systemName: "circle.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
