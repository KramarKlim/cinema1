//
//  Ticket.swift
//  Cinema
//
//  Created by Клим on 04.08.2021.
//

import Foundation
import RealmSwift

class Ticket: Object {
    @objc dynamic var time: String = ""
    @objc dynamic var name: String = ""
    @objc dynamic var price: Int = 0
    @objc dynamic var count: Int = 0
}

