//
//  MainAssembly.swift
//  fivesecondbattle
//
//  Created by  mac on 09.08.2023
//  
//


import SwiftUI

final class MainAssembly: Assembly {
    
    func build() -> some View {
        
        let navigation = container.resolve(NavigationAssembly.self).build()
        
        // Router
        let router = MainRouter(navigation: navigation)
        // Interactor
        let interactor = MainInteractor()
        
        let viewState = MainViewState()
        
        // Presenter
        let presenter = MainPresenter(router: router,
                                      interactor: interactor,
                                      viewState: viewState)
        
        // View
        let view = MainView(viewState: viewState)
        viewState.set(with: presenter)
        return view
    }
}
