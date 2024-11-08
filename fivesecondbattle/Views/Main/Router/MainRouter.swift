//
//  MainRouter.swift
//  fivesecondbattle
//
//  Created by  mac on 09.08.2023
//  
//

import Foundation

final class MainRouter: MainRouterProtocol {
    
    var navigation: any NavigationServiceType
    
    init(navigation: any NavigationServiceType){
        self.navigation = navigation
    }
    
    func navigateToGame() {
        navigation.items.append(.players)
    }
}
