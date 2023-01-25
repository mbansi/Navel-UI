//
//  CustomFilledButton.swift
//  Navel-UI
//
//  Created by Bansi Mamtora on 30/04/22.
//

import UIKit

class BaseFilledButton: UIButton {
  
    //MARK: - init
    override init(frame: CGRect){
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    //MARK: - Functions
    func setup() {
        self.titleLabel?.font = R.font.ralewaySemiBold(size: 12)
        self.layer.cornerRadius = 23
        self.titleLabel?.textColor = R.color.mediumGreen()
        self.layer.backgroundColor = R.color.gold()?.cgColor
    }
}
