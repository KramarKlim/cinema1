//
//  SofaCollectionViewCell.swift
//  Cinema1
//
//  Created by Клим on 31.07.2021.
//

import UIKit

class SofaCollectionViewCell: UICollectionViewCell {
    
    var viewModel: SofaViewModelProtocol! {
        didSet {
            sofaImage.image = viewModel.sofaImage
        }
    }
    
    @IBOutlet var sofaImage: UIImageView!
}
