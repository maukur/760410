//
//  NavigationService.swift
//  diary.emotions
//
//  Created by Artem Tischenko on 6/14/23.
//

import Foundation
import SwiftUI
import Combine

public class NavigationService:Equatable, NavigationServiceType  {
     
    public let id = UUID()
    
    public static func == (lhs: NavigationService, rhs: NavigationService) -> Bool {
        lhs.id == rhs.id
    }
      
    @Published var modalView: Views?
    @Published var items: [Views] = []
}


enum Views: Equatable, Hashable {
    
    static func == (lhs: Views, rhs: Views) -> Bool {
        lhs.stringKey == rhs.stringKey
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(self.stringKey)
    }
    
    case main
    case players
   
    var stringKey: String {
        switch self {
        case .main:
            return "main"
  
        case .players:
            return "players"
 
        }
    }
}
