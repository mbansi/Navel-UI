//
//  CustomGreyButton.swift
//  Navel-UI
//
//  Created by Bansi Mamtora on 02/05/22.
//

import UIKit

//@IBDesignable
class BaseGreyButton: BaseFilledButton {

    //MARK: - Functions
    override func setup() {
        self.layer.cornerRadius = 23
        self.layer.backgroundColor = R.color.mediumGreen()?.cgColor
    }
}
