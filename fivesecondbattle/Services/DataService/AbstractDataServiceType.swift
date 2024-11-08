//
//  AbstractDataServiceType.swift
//  onlymen
//
//  Created by  mac on 11.05.2023.
//

import RealmSwift
import Foundation

protocol AbstractDataServiceType {
    associatedtype Item: Hashable
    
    func insert(items: [Item]) async

    func read(by id: UUID)  async -> Item?
    
    func update(items: [Item]) async
    
    func update(item: Item) async
    
    func delete(items: [Item]) async
    
    func all() async -> [Item]
    
    func clear() async
}

