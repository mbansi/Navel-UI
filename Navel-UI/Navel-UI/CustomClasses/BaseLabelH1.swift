//
//  CustomLabelH1.swift
//  Navel-UI
//
//  Created by Bansi Mamtora on 02/05/22.
//

import UIKit

//@IBDesignable
class BaseLabelH1: UILabel {
    
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
        self.textColor = R.color.cream()
        self.font = R.font.ralewayExtraBold(size: 28)
    }
}
