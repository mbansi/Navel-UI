//
//  CustomFilledButton.swift
//  Navel-UI
//
//  Created by Bansi Mamtora on 30/04/22.
//

import UIKit

@IBDesignable
class CustomFilledButton: UIButton {
    @IBInspectable var cornerRadius: CGFloat = 23 {
        didSet {
           self.layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var verticalPadding: CGFloat = 23{
        didSet {
            self.configuration?.contentInsets.top = verticalPadding
            self.configuration?.contentInsets.bottom = verticalPadding
        }
    }
    
    @IBInspectable var horizontalPadding: CGFloat = 104 {
        didSet {
            self.configuration?.contentInsets.leading = horizontalPadding
            self.configuration?.contentInsets.trailing = horizontalPadding
        }
    }
    
    @IBInspectable var buttonColor: UIColor = UIColor.systemOrange {
        didSet {
            self.backgroundColor =  UIColor.systemOrange
            self.titleLabel?.font = UIFont(name: "Raleway-ExtraBold", size: 12)
        }
    }
    
  
}
