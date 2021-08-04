//
//  StorageManager.swift
//  Cinema
//
//  Created by Клим on 04.08.2021.
//

import RealmSwift

class StorageManager {
    static let shared = StorageManager()
    
    let realm = try! Realm()
    
    private init() {}
    
    func save(ticket: Ticket) {
        try! realm.write {
            realm.add(ticket)
        }
    }
    
    func delete(ticket: Ticket) {
        try! realm.write {
            realm.delete(ticket)
        }
    }
}

