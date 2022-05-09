//
//  CustomTextField.swift
//  Navel-UI
//
//  Created by Bansi Mamtora on 30/04/22.
//

import UIKit

class BaseTextField: UITextField {
    
    //MARK: - Variables
    var leftPadding: CGFloat = 25
    var textPadding = UIEdgeInsets(
        top: 23,
        left: 22,
        bottom: 23,
        right: 23
    )
    
    //MARK: - IBInspectable
    @IBInspectable var leftImage: UIImage? {
        didSet {
            updateImage()
            updateTextField()
        }
    }
    
    //MARK: - Functions
    override func leftViewRect(forBounds bounds: CGRect) -> CGRect {
        var textRect = super.leftViewRect(forBounds: bounds)
        textRect.origin.x += leftPadding
        return textRect
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        let rect = super.textRect(forBounds: bounds)
        return rect.inset(by: textPadding)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        let rect = super.editingRect(forBounds: bounds)
        return rect.inset(by: textPadding)
    }
    
    func updateTextField() {
        self.backgroundColor = R.color.darkGreen()
        self.textColor = R.color.brown()
        self.font = R.font.ralewayMedium(size: 12)
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0.0, y: self.frame.height - 1, width: self.frame.width, height: 1.0)
        bottomLine.backgroundColor = UIColor.gray.cgColor
        self.borderStyle = UITextField.BorderStyle.none
        self.layer.addSublayer(bottomLine)
    }
    
    func updateImage() {
        leftViewMode = UITextField.ViewMode.always
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        imageView.contentMode = .scaleAspectFit
        imageView.image = leftImage
        leftView = imageView
    }
}
