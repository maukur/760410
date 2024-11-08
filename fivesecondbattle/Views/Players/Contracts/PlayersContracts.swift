//
//  PlayersContracts.swift
//  fivesecondbattle
//
//  Created by Artem Tischenko on 7/30/23
//  
//


import Foundation


// Router
protocol PlayersRouterProtocol: RouterProtocol {
    func navigateBack()
}

// Presenter
protocol PlayersPresenterProtocol: PresenterProtocol {
    func didAppear()
    func didTapBackButton()
    func didTapToPlayButton()
    func didTapAddPlayerButton()
    func didTapRemovePlayer(by id: UUID)
}

// Interactor
protocol PlayersInteractorProtocol: InteractorProtocol {
    func savePlayers(players: [Player]) async
    func loadData() async
    var players: [Player] { get }
}

protocol PlayersViewProtocol  {
}


protocol PlayerViewStateProtocol: ViewStateProtocol, PlayersPresenterProtocol {
    var players: [PlayerModel] { get }
    func addPlayer(item: Player)
    func removePlayer(by id: UUID)
    func removePlayers()
    func set(with presenter: PlayersPresenterProtocol)
    func didAppear()
    func didTapBackButton()
    func didTapToPlayButton()
    func didTapAddPlayerButton()
    func didTapRemovePlayer(by id: UUID)
}
