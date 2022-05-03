//
//  CustomButton.swift
//  Navel-UI
//
//  Created by Bansi Mamtora on 02/05/22.
//

import UIKit

class CustomButton: UIButton {

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }

    func setup(){
        self.titleLabel?.font = UIFont(name: "Raleway-Medium", size: 12)
    }
}
