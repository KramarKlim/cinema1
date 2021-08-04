//
//  DataCollectionViewCell.swift
//  Cinema
//
//  Created by Клим on 04.08.2021.
//

import UIKit

class DataCollectionViewCell: UICollectionViewCell {
    
    var viewModel: DataViewModelProtocol! {
        didSet {
            dataLabel.layer.masksToBounds = true
            dataLabel.layer.cornerRadius = 10
            dataLabel.text = viewModel.data
            priceLabel.text = viewModel.price
        }
    }
    
    @IBOutlet var dataLabel: UILabel!
    @IBOutlet var priceLabel: UILabel!
    
    
}
