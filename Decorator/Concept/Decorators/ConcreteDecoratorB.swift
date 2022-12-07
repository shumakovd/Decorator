//
//  ConcreteDecoratorB.swift
//  Decorator
//
//  Created by Shumakov Dmytro on 07.12.2022.
//

import Foundation

/// Decorators can execute their behavior either before or after the call to a
/// wrapped object.
class ConcreteDecoratorB: Decorator {

    override func operation() -> String {
        return "ConcreteDecoratorB(" + super.operation() + ")"
    }
}
