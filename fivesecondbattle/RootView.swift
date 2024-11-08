//
//  ContentView.swift
//  advent.calendar
//
//  Created by Artem Tischenko on 6/14/23.
//

import SwiftUI
import UIKit

struct RootView: View {
    
    @EnvironmentObject var navigationService: NavigationService
    @EnvironmentObject var appViewBuilder: ApplicationViewFactory
    
    var body: some View {
        NavigationStack(path: $navigationService.items) {
            appViewBuilder.build(view: .main)
                .navigationDestination(for: Views.self) { path in
                    switch path {
                    case .players:
                        appViewBuilder.build(view: .players)
                    default:
                        fatalError()
                    }
                }
        }
    }
}
