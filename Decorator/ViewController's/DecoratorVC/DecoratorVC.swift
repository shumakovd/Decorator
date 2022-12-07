//
//  DecoratorVC.swift
//  Decorator
//
//  Created by Shumakov Dmytro on 07.12.2022.
//

import UIKit
import Foundation

class DecoratorVC: UIViewController {
        
    // MARK: - IBOutlets
    
    @IBOutlet private weak var mainImageView: UIImageView!
    @IBOutlet private weak var blurImageView: UIImageView!
    @IBOutlet private weak var colorImageView: UIImageView!
    
    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        testDecoratorConceptual()
        testDecoratorFromExample()
    }
    
    // MARK: - Methods
    
    func testDecoratorConceptual() {
        // This way the client code can support both simple components...
        print("Client: I've got a simple component")
        let simple = ConcreteComponent()
        Client.someClientCode(component: simple)
        
        // ...as well as decorated ones.
        //
        // Note how decorators can wrap not only simple components but the other
        // decorators as well.
        let decorator1 = ConcreteDecoratorA(simple)
        let decorator2 = ConcreteDecoratorB(decorator1)
        
        print("\nClient: Now I've got a decorated component")
        Client.someClientCode(component: decorator2)
    }
    
    func testDecoratorFromExample() {
        
        let image = loadImage()
        
        addDefaultImage(image: image)
        
        print("Client: set up an editors stack")
        let resizer = Resizer(image, xScale: 0.2, yScale: 0.2)
        
        let blurFilter = BlurFilter(resizer)
        blurFilter.update(radius: 2)
        
        addBlur(editor: blurFilter)
        
        let colorFilter = ColorFilter(blurFilter)
        colorFilter.update(contrast: 0.53)
        colorFilter.update(brightness: 0.12)
        colorFilter.update(saturation: 4)
        
        addColorFilter(editor: colorFilter)
    }
    
    func addDefaultImage(image: UIImage) {
        mainImageView.image = image
    }
    
    func addBlur(editor: ImageEditor) {
        let image = editor.apply()
        blurImageView.image = image
    }
    
    func addColorFilter(editor: ImageEditor) {
        let image = editor.apply()
        colorImageView.image = image
    }
    
    func clientCode(editor: ImageEditor) {
        let image = editor.apply()
        /// Note. You can stop an execution in Xcode to see an image preview.
        print("Client: all changes have been applied for \(image)")
    }
    
}

extension DecoratorVC {
    
    func loadImage() -> UIImage {
        
        let urlString = "https://i.pinimg.com/564x/a8/a3/1a/a8a31a23ebf7a52092659fbd60eaeae7.jpg"
        
        /// Note:
        /// Do not download images the following way in a production code.
        
        guard let url = URL(string: urlString) else {
            fatalError("Please enter a valid URL")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Cannot load an image")
        }
        
        guard let image = UIImage(data: data) else {
            fatalError("Cannot create an image from data")
        }
        return image
    }
    
}
