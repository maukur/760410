//
//  ApplicationViewBuilder.swift
//  advent.calendar
//
//  Created by Artem Tischenko on 6/14/23.
//

import SwiftUI

final class ApplicationViewFactory : Assembly, ObservableObject {
    
    required init(container: Container) {
        super.init(container: container)
    }
   
    @ViewBuilder
    func build(view: Views) -> some View {
        switch view {
        case .main:
            buildMain()
        case .players:
            buildPlayers()
        }
    }
   
    @ViewBuilder
    fileprivate func buildMain() -> some View {
        container.resolve(MainAssembly.self).build()
    }
    
    @ViewBuilder
    fileprivate func buildPlayers() -> some View {
        container.resolve(PlayersAssembly.self).build()
    }
  
}
