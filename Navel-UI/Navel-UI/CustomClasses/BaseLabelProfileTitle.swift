//
//  BaseLabelProfileTitle.swift
//  Navel-UI
//
//  Created by Bansi Mamtora on 27/05/22.
//

import UIKit

class BaseLabelProfileTitle: UILabel {

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
        self.font = R.font.ralewayRegular(size: 14)
    }

}
