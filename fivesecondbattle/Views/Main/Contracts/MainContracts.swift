//
//  MainContracts.swift
//  fivesecondbattle
//
//  Created by  mac on 09.08.2023
//  
//

import SwiftUI


// Router
protocol MainRouterProtocol: RouterProtocol {
    func navigateToGame()
}

// Presenter
protocol MainPresenterProtocol: PresenterProtocol {
    
    func didTapStart()
   
}

// Interactor
protocol MainInteractorProtocol: InteractorProtocol {
   
}

// ViewState
protocol MainViewStateProtocol: ViewStateProtocol, MainPresenterProtocol {
    func set(with presenter: MainPresenterProtocol)
}
