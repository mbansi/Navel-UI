//
//  CustomButton.swift
//  Navel-UI
//
//  Created by Bansi Mamtora on 02/05/22.
//

import UIKit

class BaseButton: UIButton {

    //MARK: - init
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    override init(frame: CGRect){
        super.init(frame: frame)
        setup()
    }

    //MARK: - Functions
    func setup(){
        self.titleLabel?.font = R.font.ralewayMedium(size: 12)
    }
}
