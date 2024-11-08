//
//  UrlServiceType.swift
//  onlymen
//
//  Created by Artem Tischenko on 6/14/23.
//

import Foundation

protocol NavigationServiceType: ObservableObject, Identifiable {
    var items:[Views] { get set }
    var modalView: Views? { get set }
}
