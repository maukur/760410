//
//  PlayersPresenter.swift
//  fivesecondbattle
//
//  Created by Artem Tischenko on 7/30/23
//  
//

import SwiftUI
import Combine

final class PlayersPresenter: ObservableObject, PlayersPresenterProtocol {
    
    private var interactor: PlayersInteractorProtocol
    private var router: PlayersRouterProtocol
    private weak var viewState: PlayerViewStateProtocol?
    
    init(router: PlayersRouterProtocol,
         interactor: PlayersInteractorProtocol,
         viewState: PlayerViewStateProtocol) {
        self.router = router
        self.interactor = interactor
        self.viewState = viewState
    }
   
    func didAppear() {
        Task {
            await interactor.loadData()
            let players = interactor.players
            await MainActor.run {
                if players.isEmpty {
                    viewState?.addPlayer(item: Player())
                } else {
                    viewState?.removePlayers()
                    players.forEach { viewState?.addPlayer(item: $0 )}
                }
            }
        }
    }
    
    func didTapBackButton() {
        router.navigateBack()
    }
    
    func didTapToPlayButton() {
      
        let players = viewState?.players.map { Player(id: $0.id, name: $0.name, score: 0)}.filter {!$0.name.isEmpty}
        guard let validPlayers = players, !validPlayers.isEmpty else { return }
        Task {
            await interactor.savePlayers(players: validPlayers)
        }
    }
    
    func didTapAddPlayerButton() {
        viewState?.addPlayer(item: Player())
    }
    
    func didTapRemovePlayer(by id: UUID) {
        if let playerCount = viewState?.players.count, playerCount > 2 {
            viewState?.removePlayer(by: id)
        }
    }

}
