//
//  CustomLabelH4.swift
//  Navel-UI
//
//  Created by Bansi Mamtora on 03/05/22.
//

import UIKit

class CustomLabelH4: UILabel {
    
    //MARK: - init
    override init(frame: CGRect){
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    //MARK: - Functions
    private func setup() {
        self.textColor = UIColor(red: 0.696, green: 0.651, blue: 0.6, alpha: 1)
        self.font = R.font.ralewayRegular(size: 10)
        self.addImage()
    }
    
    func addImage() {
        let imageAttachment = NSTextAttachment()
        imageAttachment.image = UIImage(named: Constants.locationImage)
        
        guard let width = imageAttachment.image?.size.width, let height = imageAttachment.image?.size.height else {
            return
        }
        imageAttachment.bounds = CGRect(x: 0, y: 0, width: width, height: height)
        let attachmentString = NSAttributedString(attachment: imageAttachment)
        let completeText = NSMutableAttributedString(string: "")
        completeText.append(attachmentString)
        guard let text = self.text else {
            return
        }
        let textAfterIcon = NSAttributedString(string: text)
        completeText.append(textAfterIcon)
        self.textAlignment = .right
        self.attributedText = completeText
    }
}

