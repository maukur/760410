//
//  Assembly.swift
//  thealiasgame
//
//  Created by Artem Tischenko on 6/14/23.
//

import Foundation

protocol AssemblyType: AnyObject {
    associatedtype Container
    var container: Container {get set}
    init(container: Container)
}

class Assembly: AssemblyType {
    
    var container: Container
    
    required init(container: Container) {
        self.container = container
    }
}

// Box
extension Assembly {
    func weakBox<T>(_ configure: () -> T) -> T {
        return self.container.weakBox(configure)
    }
    
    func strongBox<T>(_ configure: () -> T) -> T {
        return self.container.strongBox(configure)
    }
}
