//
//  UrlServiceTypeAssembly.swift
//  onlymen
//
//  Created by Artem Tischenko on 6/14/23.
//

import Foundation

class NavigationAssembly: Assembly {
    
    //Only one navigation should use in app
    static let navigation: any NavigationServiceType =  NavigationService()
    
    func build() -> any NavigationServiceType {
        return NavigationAssembly.navigation
    }
}
