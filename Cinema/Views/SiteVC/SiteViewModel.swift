//
//  SiteViewModel.swift
//  Cinema1
//
//  Created by Клим on 31.07.2021.
//

import UIKit

protocol SiteViewModelProtocol {
    var name: String { get }
    var ticket: TimeModel { get }
    var sitsNumber: Int { get set }
    var indexPath: IndexPath? { get }
    var price: Int { get }
    var count: Int { get }
    var sitsCount: [Int] { get set }
    var remove: Int? { get set}
    var sofa: [UIImage ] { get }
    init(name: String, ticket: TimeModel)
    func setIndexPath(for indexPath: IndexPath)
    func sofaViewModel(for indexPath: Int) -> SofaViewModelProtocol?
    func removeNeededSit(for numberOfSit: Int)
    func checkViewModel() -> CheckViewModelProtocol?
}

class SiteViewModel: SiteViewModelProtocol {
    var remove: Int?
    
    
    var sitsCount: [Int] = []
    
    var sofa: [UIImage] = DataManager.shared.sofaImage
    
    var count: Int = 16
    
    var price: Int {
        ticket.price * sitsNumber
    }
    
    var ticket: TimeModel
    
    var name: String
    
    var indexPath: IndexPath?
    
    var sitsNumber = 0
    
    required init(name: String, ticket: TimeModel) {
        self.name = name
        self.ticket = ticket
    }
    
    func setIndexPath(for indexPath: IndexPath) {
        self.indexPath = indexPath
    }
    
    func sofaViewModel(for index: Int) -> SofaViewModelProtocol? {
        let sofa = sofa[index]
        return SofaViewModel(sofaImage: sofa)
    }
    
    func checkViewModel() -> CheckViewModelProtocol? {
        return CheckViewModel(data: ticket, name: name, count: sitsNumber, sits: sitsCount, price: price)
    }
    
    func removeNeededSit(for numberOfSit: Int) {
        for number in 0..<sitsCount.count {
            if numberOfSit == sitsCount[number] {
                remove = number
            }
        }
    }
}
