//
//  CustomFilledButton.swift
//  Navel-UI
//
//  Created by Bansi Mamtora on 30/04/22.
//

import UIKit

//@IBDesignable
class CustomFilledButton: UIButton {
  
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
        self.layer.cornerRadius = 23
      self.titleLabel?.textColor = UIColor.black
        //UIColor(red: 0.141, green: 0.267, blue: 0.267, alpha: 1)
        self.layer.backgroundColor = UIColor(red: 0.837, green: 0.637, blue: 0.401, alpha: 1).cgColor
    }
}
