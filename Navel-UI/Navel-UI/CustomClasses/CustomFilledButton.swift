//
//  CustomFilledButton.swift
//  Navel-UI
//
//  Created by Bansi Mamtora on 30/04/22.
//

import UIKit

@IBDesignable
class CustomFilledButton: UIButton {
    //    @IBInspectable var cornerRadius: CGFloat = 23 {
    //        didSet {
    //           self.layer.cornerRadius = cornerRadius
    //        }
    //    }
    
    //    @IBInspectable var verticalPadding: CGFloat = 23{
    //        didSet {
    //            self.configuration?.contentInsets.top = verticalPadding
    //            self.configuration?.contentInsets.bottom = verticalPadding
    //        }
    //    }
    
    //    @IBInspectable var horizontalPadding: CGFloat = 104 {
    //        didSet {
    //            self.configuration?.contentInsets.leading = horizontalPadding
    //            self.configuration?.contentInsets.trailing = horizontalPadding
    //        }
    //    }
    
    //    @IBInspectable var buttonColor: UIColor = UIColor.systemOrange {
    //        didSet {
    //            self.backgroundColor =  UIColor.systemOrange
    //            self.titleLabel?.font = UIFont(name: "Raleway-ExtraBold", size: 12)
    //        }
    //    }
    
    override init(frame: CGRect){
        super.init(frame: frame)
        //    setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        // This will call `awakeFromNib` in your code
        setup()
    }
    
    func setup() {
        self.titleLabel?.font = UIFont(name: "Raleway-SemiBold", size: 12)
//        self.configuration?.contentInsets.leading = 104
//        self.configuration?.contentInsets.trailing = 104
//        self.configuration?.contentInsets.top = 35
//        self.configuration?.contentInsets.bottom = 50
        self.layer.cornerRadius = 23
        self.titleLabel?.textColor = UIColor(red: 0.141, green: 0.267, blue: 0.267, alpha: 1)
        self.layer.backgroundColor = UIColor(red: 0.837, green: 0.637, blue: 0.401, alpha: 1).cgColor
    }
}
