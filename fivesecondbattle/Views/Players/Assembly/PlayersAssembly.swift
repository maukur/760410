//
//  PlayersAssembly.swift
//  fivesecondbattle
//
//  Created by Artem Tischenko on 7/30/23
//  
//


import SwiftUI

final class PlayersAssembly: Assembly {
    
    func build() -> some View {
        
        let navigation = container.resolve(NavigationAssembly.self).build()

        // Router
        let router = PlayersRouter(navigation: navigation)

        let storage = container.resolve(StorageDataServiceAssembly.self).build()
        let playerDataService = container.resolve(PlayersDataServiceAssembly.self).build(storage: storage)
       
        // Interactor
        let interactor = PlayersInteractor(playerDataService: playerDataService)

        let viewState = PlayerViewState()
        // Presenter,
        let presenter = PlayersPresenter(router: router,
                                         interactor: interactor,
                                         viewState: viewState)
        // View
        let view = PlayersView(viewState: viewState)
        viewState.set(with: presenter)
        return view
    }
}
 
