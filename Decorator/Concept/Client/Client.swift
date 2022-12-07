//
//  Client.swift
//  Decorator
//
//  Created by Shumakov Dmytro on 07.12.2022.
//

import Foundation

/// The client code works with all objects using the Component interface. This
/// way it can stay independent of the concrete classes of components it works
/// with.
class Client {
    // ...
    static func someClientCode(component: Component) {
        print("Result: " + component.operation())
    }
    // ...
}
