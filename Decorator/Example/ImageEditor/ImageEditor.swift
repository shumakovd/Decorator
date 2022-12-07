//
//  ImageEditor.swift
//  Decorator
//
//  Created by Shumakov Dmytro on 07.12.2022.
//

import UIKit
import Foundation

protocol ImageEditor: CustomStringConvertible {

    func apply() -> UIImage
}
