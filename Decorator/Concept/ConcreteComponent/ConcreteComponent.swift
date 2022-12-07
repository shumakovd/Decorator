//
//  ConcreteComponent.swift
//  Decorator
//
//  Created by Shumakov Dmytro on 07.12.2022.
//

import Foundation

/// Concrete Components provide default implementations of the operations. There
/// might be several variations of these classes.
class ConcreteComponent: Component {

    func operation() -> String {
        return "ConcreteComponent"
    }
}
