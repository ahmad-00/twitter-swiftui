//
//  NetworkManager.swift
//  SwiftUITest2
//
//  Created by ahmad mohammadi on 3/9/21.
//

import Foundation
import Combine

enum ApiError: Error {
    case ServerError(desc: String)
}

class NetworkManager {
    
    private init() {}
    
    static let shared = NetworkManager()
    
    func fetchData(searchQuery: String) -> Future<Feeds, ApiError> {
        
        return Future {promise in
            let url = URL(string: "https://api.twitter.com/1.1/search/tweets.json?q=\(searchQuery)")!

            var request = URLRequest(url: url)
            request.setValue("Set Your Token Here", forHTTPHeaderField: "Authorization")
            
            let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
                
                if let err = error {
                    promise(.failure(.ServerError(desc: err.localizedDescription)))
                } else {
                    if let data = data {
                        let decoder = JSONDecoder()
                        do {
                            let feeds: Feeds = try decoder.decode(Feeds.self, from: data)
                            promise(.success(feeds))
                        } catch {
                            print("Json error")
                            promise(.failure(.ServerError(desc: "Json error")))
                        }
                    } else {
                        print("Nil Data")
                        promise(.failure(.ServerError(desc: "Nil Data")))
                    }
                }
                
            }
            task.resume()
        }
        
    }
    
}
