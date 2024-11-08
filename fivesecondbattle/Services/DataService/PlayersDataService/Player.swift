//
//  Player.swift
//  onlymen
//
//  Created by ingvar on 09.05.2022.
//

import Foundation

struct Player: Codable, Hashable, Identifiable {
    
    init() { }
    
    init(id: UUID,
         name: String,
         score: Int) {
        self.id = id
        self.name = name
        self.score = score
    }
    
    init(name: String) {
        self.id = UUID()
        self.name = name
        self.score = 0
    }
   

    init(dto: PlayerDTO) {
        self.id = dto.id
        name = dto.name
        score = dto.score
    }
    
    var id: UUID = UUID()
    var name: String = ""
    var score: Int = 0
}
