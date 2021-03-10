//
//  SearchVM.swift
//  SwiftUITest2
//
//  Created by ahmad mohammadi on 3/10/21.
//

import Foundation
import Combine

class SearchVM: ObservableObject {
//    var searchString: String = "" {
//        willSet(newValue) {
//            fetchTweets(searchQuery: newValue)
//        }
//    }
    
    @Published var searchString = ""
    @Published var tweets: ([Status], String?) = ([], nil)
    
    private var disposable = Set<AnyCancellable>()
    
    init() {
        $searchString.debounce(for: 0.6, scheduler: DispatchQueue.main).receive(on: DispatchQueue.main).sink { (searchStr) in
            print(searchStr)
            self.fetchTweets(searchQuery: searchStr)
        }.store(in: &disposable)
    }
    
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
