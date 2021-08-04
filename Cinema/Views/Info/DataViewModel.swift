//
//  DataViewModel.swift
//  Cinema
//
//  Created by Клим on 04.08.2021.
//

import Foundation

protocol DataViewModelProtocol {
    
    var data: String { get }
    var price: String { get }
    var info: TimeModel { get }
    init(info: TimeModel)
}

class DataViewModel: DataViewModelProtocol {
    
    var data: String {
        info.time
    }
    
    var price: String {
        "\(info.price) рублей"
    }
    
    var info: TimeModel
    
    required init(info: TimeModel) {
        self.info = info
    }
    
    
}
