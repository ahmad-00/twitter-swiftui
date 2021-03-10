//
//  SearchView.swift
//  SwiftUITest2
//
//  Created by ahmad mohammadi on 3/9/21.
//

import SwiftUI

struct SearchView: View {
    
    @ObservedObject var vm = SearchVM()
    
    init(viewModel: SearchVM) {
        self.vm = viewModel
        UITableView.appearance().separatorStyle = .singleLine
        UITableViewCell.appearance().backgroundColor = UIColor.backColor()
        UITableView.appearance().backgroundColor = UIColor.backColor()
    }
    
    var body: some View {
        ZStack {
            Color.init(UIColor.backColor()).ignoresSafeArea()
            VStack {
                TextField("Search ...", text: $vm.searchString)
                    .padding(.init(top: 0, leading: 15, bottom:0 , trailing: 15))
                    .foregroundColor(.blue)
                    .textFieldStyle(RoundedBorderTextFieldStyle.init())
                    .frame(width: 280, height: 55, alignment: .center)
                
                List {
                    ForEach(vm.tweets.0) {tweet in
                        TweetRow(tweet: tweet).onTapGesture {
                            print("Cell Tapped")
                        }
                    }
                }
                
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(viewModel: SearchVM())
    }
}
