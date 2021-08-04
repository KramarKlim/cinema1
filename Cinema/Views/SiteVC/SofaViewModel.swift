//
//  SofaViewModel.swift
//  Cinema1
//
//  Created by Клим on 31.07.2021.
//

import UIKit

protocol SofaViewModelProtocol {
    var sofaImage: UIImage { get }
    init(sofaImage: UIImage)
}

class SofaViewModel: SofaViewModelProtocol {
    var sofaImage: UIImage
    required init(sofaImage: UIImage) {
        self.sofaImage = sofaImage
    }
    
}
