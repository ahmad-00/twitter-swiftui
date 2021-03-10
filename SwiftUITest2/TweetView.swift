//
//  TweetView.swift
//  SwiftUITest2
//
//  Created by ahmad mohammadi on 3/9/21.
//

import SwiftUI

struct TweetView: View {
    
    @ObservedObject var viewModel: ViewModel
    
    init(viewModel: ViewModel) {
        self.viewModel = viewModel
        UITableView.appearance().separatorStyle = .singleLine
        UITableViewCell.appearance().backgroundColor = UIColor.backColor()
        UITableView.appearance().backgroundColor = UIColor.backColor()
    }
    
    var body: some View {
        ZStack {
            Color.init(UIColor.backColor()).ignoresSafeArea()
            List {
                ForEach(viewModel.tweets.0) {tweet in
                    TweetRow(tweet: tweet).onTapGesture {
                        print("Cell Tapped")
                    }
                }
            }
        }.onAppear(perform: {
            viewModel.fetchTweets(searchQuery: "Covid")
        })
    }
}

struct TweetView_Previews: PreviewProvider {
    static var previews: some View {
        TweetView(viewModel: ViewModel())
    }
}
