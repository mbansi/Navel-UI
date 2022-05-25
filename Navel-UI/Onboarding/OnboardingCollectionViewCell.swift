//
//  OnboardingCollectionViewCell.swift
//  Navel-UI
//
//  Created by Bansi Mamtora on 25/05/22.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var sliderImage: UIImageView!
    @IBOutlet weak var lblTitle: BaseLabelH1OnBoarding!
    @IBOutlet weak var lblLocation: BaseLabelH4!
    
    @IBOutlet weak var location: UILabel!
    
    func setup(_ slide: OnboardingSlide) {
        sliderImage.image = slide.image
        lblTitle.text = slide.title
        location.text = slide.location
    }
}
