//
//  PlayerRealm.swift
//  onlymen
//
//  Created by ingvar on 09.05.2022.
//

import Foundation
import RealmSwift


final class PlayerDTO: Object, Codable {
    
    @Persisted(primaryKey: true) var id: UUID
    @Persisted var name = ""
    @Persisted var score = 0
    
    convenience init(player: Player) {
        self.init()
        
        id = player.id
        name = player.name
        score = player.score
    }
    
    
    
}
