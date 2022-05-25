//
//  CustomTextFieldRightView.swift
//  Navel-UI
//
//  Created by Bansi Mamtora on 03/05/22.
//

import UIKit

class BaseTextFieldRightView: BaseTextField {
    
    //MARK: - Variables
    var imageRightPadding: CGFloat = -25
    
    //MARK: - init
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        updateRightView()
    }
    override init(frame: CGRect){
        super.init(frame: frame)
        updateRightView()
    }
    
    //MARK: - Functions
    override func rightViewRect(forBounds bounds: CGRect) -> CGRect {
        let rect = super.rightViewRect(forBounds: bounds)
        return rect.inset(by: UIEdgeInsets(top: 0, left:imageRightPadding,bottom:0,right:0))
    }
    
    func updateRightView() {
        let forgotButton = UIButton(type: .custom)
        forgotButton.frame = CGRect(x: 0, y: 0, width: 43, height: 14)
        forgotButton.setTitle(R.string.localizable.forgot(), for: .normal)
        forgotButton.setTitleColor(R.color.gold(), for: .normal)
        forgotButton.titleLabel?.font = R.font.ralewayMedium(size: 12)
        self.rightViewMode = .always
        self.rightView = forgotButton
    }
}
