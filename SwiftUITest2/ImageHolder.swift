//
//  ImageHolder.swift
//  SwiftUITest2
//
//  Created by ahmad mohammadi on 3/9/21.
//

import SwiftUI
import Combine

struct ImageHolder: View {

    @ObservedObject var downloader: ImageDownloader

    init(url: String) {
        downloader = ImageDownloader(imageURL: url)
    }

    var body: some View {
        GeometryReader { geometry in
            finalImage().resizable().frame(width: geometry.size.width, height: geometry.size.height, alignment: .center)
        }
    }

    func finalImage() -> Image {
        switch downloader.state {
        case .Loading:
            return Image(uiImage: UIImage())
        case .Success:
            let image = UIImage(data: downloader.data) ?? UIImage()
            return Image(uiImage: image)
        case .Failure:
            return Image("website")
        }
    }
}
