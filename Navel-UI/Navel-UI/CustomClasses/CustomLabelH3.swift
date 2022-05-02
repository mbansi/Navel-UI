//
//  CustomLabelH3.swift
//  Navel-UI
//
//  Created by Bansi Mamtora on 02/05/22.
//

import UIKit

class CustomLabelH3: UILabel {

    override init(frame: CGRect){
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        // This will call `awakeFromNib` in your code
        setup()
    }
    
    private func setup() {
        self.textColor = .white
        self.font = UIFont(name: "Raleway-Medium", size: 12)
    }

}
