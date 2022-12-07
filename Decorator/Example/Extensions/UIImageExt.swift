//
//  UIImageExt.swift
//  Decorator
//
//  Created by Shumakov Dmytro on 07.12.2022.
//

import UIKit
import Foundation

extension UIImage: ImageEditor {

    func apply() -> UIImage {
        return self
    }

    open override var description: String {
        return "Image"
    }
}


