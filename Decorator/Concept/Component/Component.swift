//
//  Component.swift
//  Decorator
//
//  Created by Shumakov Dmytro on 07.12.2022.
//

import Foundation

/// The base Component interface defines operations that can be altered by
/// decorators.
protocol Component {

    func operation() -> String
}
