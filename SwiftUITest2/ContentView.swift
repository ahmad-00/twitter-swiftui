//
//  ContentView.swift
//  SwiftUITest2
//
//  Created by ahmad mohammadi on 3/9/21.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        UITabBar.appearance().barTintColor = UIColor.backColor()
        UITabBar.appearance().isTranslucent = false
    }
    
    var body: some View {
        ZStack{
            Color.init(UIColor.backColor()).ignoresSafeArea()
            TabView {
                TweetView(viewModel: ViewModel())
                    .tabItem {
                        Label("Tweet", image: "eye")
                    }
                
                SearchView(viewModel: SearchVM())
                    .tabItem {
                        Label("Search", image: "search")
                    }
                
                SettingView()
                    .tabItem {
                        Label("Setting", image: "headphone")
                    }
                
                NewTweetView()
                    .tabItem {
                        Label("New Tweet", image: "writing")
                    }
            }.accentColor(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
