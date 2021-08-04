//
//  CheckViewModel.swift
//  Cinema1
//
//  Created by Клим on 01.08.2021.
//

import Foundation

protocol CheckViewModelProtocol {
    var price: Int { get }
    var name: String { get }
    var count: Int { get }
    var sits: [Int] { get }
    var data: TimeModel { get }
    var time: String { get }
    init(data: TimeModel, name: String, count: Int, sits: [Int], price: Int)
}

class CheckViewModel: CheckViewModelProtocol {
    
    var price: Int
    
    var name: String
    
    var count: Int
    
    var sits: [Int]
    
    var data: TimeModel
    
    var time: String {
        data.time
    }
    
    required init(data: TimeModel, name: String, count: Int, sits: [Int], price: Int) {
        self.data = data
        self.name = name
        self.count = count
        self.sits = sits
        self.price = price
    }
    
    
}
