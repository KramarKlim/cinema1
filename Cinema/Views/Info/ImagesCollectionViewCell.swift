//
//  ImagesCollectionViewCell.swift
//  Cinema
//
//  Created by Клим on 04.08.2021.
//

import UIKit

class ImagesCollectionViewCell: UICollectionViewCell {
    
    var modelView: ImagesModelViewProtocol! {
        didSet {
            DispatchQueue.main.async {
                guard let image = self.modelView.imagesData else { return }
                self.filmImages.image = UIImage(data: image)
            }
        }
    }
    
    @IBOutlet var filmImages: UIImageView!
    
}
