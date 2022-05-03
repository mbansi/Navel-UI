//
//  CustomTextFieldRightView.swift
//  Navel-UI
//
//  Created by Bansi Mamtora on 03/05/22.
//

import UIKit

class CustomTextFieldRightView: CustomTextField {

    var rightPadding: CGFloat = 25
    
    override func rightViewRect(forBounds bounds: CGRect) -> CGRect {
        var textRect = super.rightViewRect(forBounds: bounds)
        textRect.origin.x += rightPadding
        return textRect
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        // This will call `awakeFromNib` in your code
      //  updateRightView()
    }
    
    func updateRightView() {
        rightViewMode = UITextField.ViewMode.always
        let button = UIButton(type: .custom)
        button.titleLabel?.text = "Forgot?"
        button.titleLabel?.textColor = UIColor.systemBlue
        button.frame = CGRect(x: 0, y: 0, width: 50, height: 15)
        button.backgroundColor = UIColor.red
        rightView = button
    }
}
