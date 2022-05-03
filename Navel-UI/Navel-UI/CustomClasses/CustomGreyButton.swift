//
//  CustomGreyButton.swift
//  Navel-UI
//
//  Created by Bansi Mamtora on 02/05/22.
//

import UIKit

//@IBDesignable
class CustomGreyButton: CustomFilledButton {

    override func setup() {
        self.layer.cornerRadius = 23
        self.layer.backgroundColor = UIColor(red: 0.141, green: 0.267, blue: 0.267, alpha: 1).cgColor
    }

}
