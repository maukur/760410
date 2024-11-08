//
//  AdventCalendarApp.swift
//  advent.calendar
//
//  Created by Artem Tischenko on 10/11/2022.
//

import SwiftUI
import UIKit

@main
struct RootApp: App {
    
    @ObservedObject var appViewBuilder: ApplicationViewFactory
    @ObservedObject var navigationService: NavigationService
   
    let container: DependencyContainer = {
        let factory = AssemblyFactory()
        let container = DependencyContainer(assemblyFactory: factory)
        
        container.apply(NavigationAssembly.self)
        
        //Data Services
        container.apply(StorageDataServiceAssembly.self)
        container.apply(PlayersDataServiceAssembly.self)
        
        container.apply(MainAssembly.self)
        
        container.apply(PlayersAssembly.self)
        
        
        return container
    }()

    init() {
        navigationService = container.resolve(NavigationAssembly.self).build() as! NavigationService
        appViewBuilder = ApplicationViewFactory(container: container)
    }
    
 
    var body: some Scene {
        WindowGroup {
            RootView()
                .environmentObject(navigationService)
                .environmentObject(appViewBuilder)
        }
    }
    
}
