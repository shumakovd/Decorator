//
//  ImageDecorator.swift
//  Decorator
//
//  Created by Shumakov Dmytro on 07.12.2022.
//

import UIKit
import Foundation

class ImageDecorator: ImageEditor {

    private var editor: ImageEditor

    required init(_ editor: ImageEditor) {
        self.editor = editor
    }

    func apply() -> UIImage {
        print(editor.description + " applies changes")
        return editor.apply()
    }

    var description: String {
        return "ImageDecorator"
    }
}
