//
//  ViewState.swift
//  fivesecondbattle
//
//  Created by  mac on 02.10.2023.
//

import SwiftUI

final class PlayerViewState: ObservableObject, PlayerViewStateProtocol {
 
    private let id = UUID()
    private var presenter: PlayersPresenterProtocol?
    
    @Published var players: [PlayerModel] = []
    @Published private(set) var focusItemId: UUID?
    
    func removePlayers() {
        players.removeAll()
    }
    
    func addPlayer(item: Player) {
        let player = PlayerModel(player: item)
        withAnimation {
            players.append(contentsOf: [player])
        }
        //main.async fixed scroll to glitch
        DispatchQueue.main.async {
            self.focusItemId = player.id
        }
    }
    
    func removePlayer(by id: UUID) {
        withAnimation {
            players.removeAll {$0.id == id }
        }
    }
    
    func set(with presenter: PlayersPresenterProtocol) {
        self.presenter = presenter
    }
    
    func didAppear() {
        presenter?.didAppear()
    }
    
    func didTapBackButton() {
        presenter?.didTapBackButton()
    }
    
    func didTapToPlayButton() {
        presenter?.didTapToPlayButton()
    }
    
    func didTapAddPlayerButton() {
        presenter?.didTapAddPlayerButton()
    }
    
    func didTapRemovePlayer(by id: UUID) {
        presenter?.didTapRemovePlayer(by: id)
    }
}
