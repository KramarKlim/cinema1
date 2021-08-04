//
//  TimeViewModel.swift
//  Cinema1
//
//  Created by Клим on 29.07.2021.
//

import Foundation

protocol TimeViewModelProtocol {
    
    var time: String { get }
    var cost: String { get }
    var information: TimeModel { get }
    init(information: TimeModel)
}

class TimeViewModel: TimeViewModelProtocol {
    
    var time: String {
        information.time
    }
    
    var cost: String {
        "\(information.price) рублей"
    }
    
    var information: TimeModel
    
    required init(information: TimeModel) {
        self.information = information
    }
    
    
}
