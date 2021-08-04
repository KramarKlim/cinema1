//
//  OneTicketViewModel.swift
//  Cinema1
//
//  Created by Клим on 02.08.2021.
//

import Foundation

protocol OneTicketViewModelProtocol {
    var name: String { get }
    var time: String { get }
    var price: Int { get }
    init(name: String, time: String, price: Int)
}

class OneTicketViewModel: OneTicketViewModelProtocol {
    var name: String
    
    var time: String
    
    var price: Int
    
    required init(name: String, time: String, price: Int) {
        self.name = name
        self.time = time
        self.price = price
    }
}
