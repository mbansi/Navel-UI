//
//  CustomTextFieldRightView.swift
//  Navel-UI
//
//  Created by Bansi Mamtora on 03/05/22.
//

import UIKit

class CustomTextFieldRightView: CustomTextField {
    
    
    var imageRightPadding: CGFloat = -25
    
    override func rightViewRect(forBounds bounds: CGRect) -> CGRect {
        let rect = super.rightViewRect(forBounds: bounds)
        return rect.inset(by: UIEdgeInsets(top: 0, left:imageRightPadding,bottom:0,right:0))
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        // This will call `awakeFromNib` in your code
        updateRightView()
    }
    
    func updateRightView() {
        let forgotButton = UIButton(type: .custom)
        forgotButton.addTarget(self, action: #selector(onClick), for: .touchUpInside)
        forgotButton.frame = CGRect(x: 0, y: 0, width: 43, height: 14)
        forgotButton.titleLabel?.text = "Forgot?"
        forgotButton.titleLabel?.textColor = UIColor(red: 0.837, green: 0.637, blue: 0.401, alpha: 1)
        self.rightViewMode = .always
        self.rightView = forgotButton
    }
    
    @objc func onClick() {
        print("Click")
    }
    
}
