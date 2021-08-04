//
//  CheckViewController.swift
//  Cinema1
//
//  Created by Клим on 01.08.2021.
//

import UIKit
import RealmSwift

class CheckViewController: UIViewController {
    
    let ticket = Ticket()
    
    var viewModel: CheckViewModelProtocol!

    @IBOutlet var timeLabel: UILabel!
    @IBOutlet var sitsLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var countLabel: UILabel!
    @IBOutlet var priceLabel: UILabel!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
    
    private func setUp() {
        timeLabel.text = "Время: \(viewModel.time)"
        sitsLabel.text = "\(viewModel.sits.toPrint)"
        nameLabel.text = viewModel.name
        countLabel.text = "\(viewModel.count)"
        priceLabel.text = "\(viewModel.price) руб"
    }
    
    @IBAction func doneButtonAction(_ sender: Any) {
        saveData()
        
        StorageManager.shared.save(ticket: ticket)
        
        self.navigationController?.popViewController(animated: true)
    }
    
    private func saveData() {
        ticket.name = viewModel.name
        ticket.count = viewModel.count
        ticket.time = viewModel.time
        ticket.price = viewModel.price
    }
}
