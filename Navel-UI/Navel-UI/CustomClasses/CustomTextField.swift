//
//  CustomTextField.swift
//  Navel-UI
//
//  Created by Bansi Mamtora on 30/04/22.
//

import UIKit

@IBDesignable
class CustomTextField: UITextField {
    
    @IBInspectable var leftPadding: CGFloat = 25
    
    override func leftViewRect(forBounds bounds: CGRect) -> CGRect {
        var textRect = super.leftViewRect(forBounds: bounds)
        textRect.origin.x += leftPadding
        return textRect
    }
    
    @IBInspectable var borderWidth: CGFloat = 1 {
        didSet {
            let border = CALayer()
            border.frame = CGRect(x: 0, y: self.frame.size.height - borderWidth, width:  self.frame.size.width, height: self.frame.size.height)

            border.borderWidth = borderWidth
            self.layer.addSublayer(border)
            self.borderStyle = .none
            self.layer.masksToBounds = true
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.gray {
        didSet {
            let border = CALayer()
            border.borderColor = self.borderColor.cgColor
            border.frame = CGRect(x: 0, y: self.frame.size.height - borderWidth, width:  self.frame.size.width, height: self.frame.size.height)
            border.borderWidth = borderWidth
            self.layer.addSublayer(border)
            self.layer.masksToBounds = true
        }
    }
    
    @IBInspectable var leftImage: UIImage? {
        didSet {
            updateImage()
            updateTextField()
        }
    }
    
//    @IBInspectable var bgColor: UIColor = UIColor(red: 0.105, green: 0.196, blue: 0.196, alpha: 1) {
//        didSet {
//            self.backgroundColor = bgColor
//        }
//    }
    
    func updateTextField() {
        self.layer.borderColor = UIColor.gray.cgColor
        self.layer.borderWidth = 1
        self.backgroundColor = UIColor(red: 0.105, green: 0.196, blue: 0.196, alpha: 1)
        self.textColor = UIColor(red: 0.696, green: 0.651, blue: 0.6, alpha: 1)
    }
    
    func updateImage() {
            leftViewMode = UITextField.ViewMode.always
            let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
            imageView.contentMode = .scaleAspectFit
            imageView.image = leftImage
            leftView = imageView
    }
}
