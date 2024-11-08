//
//  PlayersRouter.swift
//  fivesecondbattle
//
//  Created by Artem Tischenko on 7/30/23
//  
//

import Foundation

final class PlayersRouter: PlayersRouterProtocol {
    
    var navigation: any NavigationServiceType
    
    init(navigation: any NavigationServiceType){
        self.navigation = navigation
    }
    
    func navigateBack() {
        navigation.items.removeLast()
    }
    
   
    
}
