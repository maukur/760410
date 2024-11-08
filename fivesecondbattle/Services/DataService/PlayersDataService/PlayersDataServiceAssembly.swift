//
//  PlayersDataServiceAssembly.swift
//  onlymen
//
//  Created by ingvar on 09.05.2022
//	
//

import Foundation

class PlayersDataServiceAssembly: Assembly {
    func build(storage: StorageDataServiceType) -> any PlayersDataServiceType {
        let service = PlayersDataService(storage: storage)
        return service
    }
}
