//
//  PlayersInteractor.swift
//  fivesecondbattle
//
//  Created by Artem Tischenko on 7/30/23
//  
//


import Foundation

final class PlayersInteractor: PlayersInteractorProtocol {
    
    var players: [Player] = []
    
    private let playerDataService: any PlayersDataServiceType
 
    init(playerDataService: any PlayersDataServiceType) {
        self.playerDataService = playerDataService
    }
    
    func savePlayers(players: [Player]) async {
        await playerDataService.insert(items: players)
    }
    
    func loadData() async {
        await restorePlayers()
    }
    
    private func restorePlayers() async {
        var players = await playerDataService.all()
        self.players.removeAll()
        
        if players.isEmpty {
            players.append(contentsOf: [Player(name: "Player " + String(1)), Player(name: "Player " + String(2))])
        }
        
        self.players.append(contentsOf: players)
    }
}

// MARK: Private
extension PlayersInteractor {
    
}
