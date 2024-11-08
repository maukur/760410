//
//  PlayersDataService.swift
//  onlymen
//
//  Created by ingvar on 09.05.2022
//	
//

import Foundation
import RealmSwift

class PlayersDataService: PlayersDataServiceType {
    
    let storage: StorageDataServiceType
    
    init(storage: StorageDataServiceType){
        self.storage = storage
    }
    
    func insert(items: [Player]) async {
        await storage.update(items: items.map {PlayerDTO(player: $0)})
    }
    
    func read(by id: UUID) async -> Player? {
        let all = await storage.all(PlayerDTO.self, maper: { Player(dto: $0 )})
        return all.filter { $0.id == id }.first
    }
    
    func update(item: Player) async {
        await storage.update(item: PlayerDTO(player: item))
    }
    
    func update(items: [Player]) async {
        await storage.update(items: items.map { PlayerDTO(player: $0)})
    }
    
    func delete(items: [Player]) async {
        //
    }
    
    func all() async -> [Player] {
        await storage.all(PlayerDTO.self, maper:  {Player(dto: $0)})
    }
    
    func clear() async {
        await storage.clear(PlayerDTO.self)
    }
    //let realm = try! Realm()
    
//    func incrementPlayerScore(player: Player, score: Int = 1) {
//        let realmPlayer = realm.objects(PlayerRealm.self).first { $0.id == player.id }
//        guard let unwrapRealmPlayer = realmPlayer else { return }
//
//        try? realm.write {
//
//            unwrapRealmPlayer.score += score
//
//            realm.add(unwrapRealmPlayer, update: .all)
//        }
 //   }

//   func clearScore() {
//        let items = realm.objects(PlayerRealm.self)
//        try? realm.write {
//            for item in items {
//                item.score = 0
//            }
//        }
  //  }
    
//    func add(players: [Player]) {
//        try! realm.write {
//            realm.add(players.map { PlayerRealm(player: $0) })
//        }
   // }
    
//    func delete() {
//        let items = realm.objects(PlayerRealm.self)
//        try! realm.write {
//            realm.delete(items)
//        }
   // }
    
//    func all() -> [Player] {
 //       []
//        let items = realm.objects(PlayerRealm.self)
//        return Array(items.map { Player(realmObject: $0) })
  //  }
    
 //   func turnHasPassed(for player: Player) {
//        let realmPlayer = realm.objects(PlayerRealm.self).first { $0.id == player.id }
//        guard let unwrapRealmPlayer = realmPlayer else { return }
//
//        try? realm.write {
//
//            unwrapRealmPlayer.isQueue = true
//            realm.add(unwrapRealmPlayer, update: .all)
//        }
   // }
    
  //  func updateQueueAtEndOfCircle() {
//        let all = realm.objects(PlayerRealm.self)
//        try? realm.write {
//            all.forEach {$0.isQueue = false}
//            realm.add(all, update: .all)
//        }
   // }
}
