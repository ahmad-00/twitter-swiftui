//
//  ImageDownloader.swift
//  SwiftUITest2
//
//  Created by ahmad mohammadi on 3/9/21.
//

import SwiftUI
import Combine

enum LoadState {
    case Loading, Success, Failure
}

class ImageDownloader: ObservableObject {
    
    @Published var data = Data()
    @Published var state = LoadState.Loading
    
    init(imageURL: String) {
        guard let url = URL(string: imageURL) else {
            state = LoadState.Failure
            return
            
        }

        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            guard let data = data else {
                DispatchQueue.main.async {
                    self.state = LoadState.Failure
                }
                return
            }
            DispatchQueue.main.async {
                self.data = data
                self.state = LoadState.Success
            }

        }.resume()
    }
    
}
