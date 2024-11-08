//
//  MainViewState.swift
//  fivesecondbattle
//
//  Created by  mac on 09.08.2023
//  
//

import SwiftUI

final class MainViewState: ObservableObject, MainViewStateProtocol {
   
    private var presenter: MainPresenterProtocol?
    
    func set(with presenter: MainPresenterProtocol) {
        self.presenter = presenter
    }
}

extension MainViewState {
    func didTapStart() {
        presenter?.didTapStart()
    }
}
