//
//  CustomLabelH3.swift
//  Navel-UI
//
//  Created by Bansi Mamtora on 02/05/22.
//

import UIKit

class BaseLabelH3: UILabel {

    //MARK: - init
    override init(frame: CGRect){
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    //MARK: - Function
    private func setup() {
        self.font = R.font.ralewayMedium(size: 12)
    }
}
