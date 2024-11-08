//
//  StorageDataServiceAssembly.swift
//  NeverEver
//
//  Created by Macbook on 14.12.2023.
//

import Foundation


final class StorageDataServiceAssembly: Assembly {
    fileprivate static let storage: StorageDataServiceType = StorageDataService()
    
    func build() -> any StorageDataServiceType {
        return StorageDataServiceAssembly.storage
    }
}
