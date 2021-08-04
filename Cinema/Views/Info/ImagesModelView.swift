//
//  ImagesModelView.swift
//  Cinema
//
//  Created by Клим on 04.08.2021.
//

import Foundation

protocol ImagesModelViewProtocol {
    var imagesData: Data? { get }
    var imagesString: String { get }
    init(imagesString: String)
}

class ImagesModelView: ImagesModelViewProtocol {
    
    var imagesData: Data? {
        ImageFetch.shared.fetchImageData(from: imagesString)
    }
    
    var imagesString: String
    
    required init(imagesString: String) {
        self.imagesString = imagesString
    }
}
