//
//  CustomLabelH4.swift
//  Navel-UI
//
//  Created by Bansi Mamtora on 03/05/22.
//

import UIKit

class CustomLabelH4: UILabel {

    override init(frame: CGRect){
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        // This will call `awakeFromNib` in your code
        setup()
    }
    
    private func setup() {
        self.textColor = UIColor(red: 0.696, green: 0.651, blue: 0.6, alpha: 1)
        self.font = UIFont(name: "Raleway-Regular", size: 10)
    }
}
