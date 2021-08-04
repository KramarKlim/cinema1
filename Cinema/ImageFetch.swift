//
//  ImageFetch.swift
//  Cinema
//
//  Created by Клим on 04.08.2021.
//

import UIKit

class ImageFetch {
    
    static let shared = ImageFetch()
    
    private init() {}
    
    func fetchImageData(from url: String) -> Data? {
        guard let imageURL = URL(string: url) else { return nil }
        guard let imageData = try? Data(contentsOf: imageURL) else { return nil }
        return imageData
    }
}
