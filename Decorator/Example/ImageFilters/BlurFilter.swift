//
//  BlurFilter.swift
//  Decorator
//
//  Created by Shumakov Dmytro on 07.12.2022.
//

import UIKit
import Foundation

class BlurFilter: BaseFilter {

    required init(_ editor: ImageEditor) {
        super.init(editor: editor, filterName: "CIGaussianBlur")
    }

    func update(radius: Double) {
        filter?.setValue(radius, forKey: "inputRadius")
    }

    override var description: String {
        return "BlurFilter"
    }
}
