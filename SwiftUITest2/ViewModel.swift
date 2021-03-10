//
//  ViewModel.swift
//  SwiftUITest2
//
//  Created by ahmad mohammadi on 3/9/21.
//

import SwiftUI
import Combine

class ViewModel: ObservableObject {
    
    @Published var tweets: ([Status], String?) = ([], nil)
    
    private var disposable = Set<AnyCancellable>()
    
    func fetchTweets(searchQuery: String) {
        
        NetworkManager.shared.fetchData(searchQuery: searchQuery).receive(on: DispatchQueue.main).sink { (_result) in
            switch _result {
            case .failure(let err):
                switch err {
                case .ServerError(let desc):
                    self.tweets = ([], desc)
                }
            case .finished:
                break
            }
        } receiveValue: { (_feeds) in
            self.tweets = ((_feeds.statuses) ?? [], nil)
        }.store(in: &disposable)
    }
    
}


