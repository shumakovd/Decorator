//
//  ColorFilter.swift
//  Decorator
//
//  Created by Shumakov Dmytro on 07.12.2022.
//

import UIKit
import Foundation

class ColorFilter: BaseFilter {

    required init(_ editor: ImageEditor) {
        super.init(editor: editor, filterName: "CIColorControls")
    }

    func update(saturation: Double) {
        filter?.setValue(saturation, forKey: "inputSaturation")
    }

    func update(brightness: Double) {
        filter?.setValue(brightness, forKey: "inputBrightness")
    }

    func update(contrast: Double) {
        filter?.setValue(contrast, forKey: "inputContrast")
    }

    override var description: String {
        return "ColorFilter"
    }
}
