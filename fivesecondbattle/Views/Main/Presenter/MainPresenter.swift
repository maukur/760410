//
//  MainPresenter.swift
//  fivesecondbattle
//
//  Created by  mac on 09.08.2023
//  
//

import SwiftUI

final class MainPresenter: ObservableObject, MainPresenterProtocol {
    
    private let router: MainRouterProtocol
    private weak var viewState: MainViewStateProtocol?
    private let interactor: MainInteractorProtocol
    
    init(router: MainRouterProtocol,
         interactor: MainInteractorProtocol,
         viewState: MainViewStateProtocol) {
        self.router = router
        self.interactor = interactor
        self.viewState = viewState
    }
    
    func didTapStart() {
        router.navigateToGame()
    }
}
