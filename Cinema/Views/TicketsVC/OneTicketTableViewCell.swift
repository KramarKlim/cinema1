//
//  OneTicketTableViewCell.swift
//  Cinema1
//
//  Created by Клим on 02.08.2021.
//

import UIKit

class OneTicketTableViewCell: UITableViewCell {
    
    var viewModel: OneTicketViewModelProtocol! {
        didSet {
            nameLabel.text = viewModel.name
            timeLabel.text = viewModel.time
            priceLabel.text = "\(viewModel.price) руб"
        }
    }

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var timeLabel: UILabel!
    @IBOutlet var priceLabel: UILabel!
    
}

