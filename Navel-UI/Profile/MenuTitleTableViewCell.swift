//
//  MenuTitleTableViewCell.swift
//  Navel-UI
//
//  Created by Bansi Mamtora on 27/05/22.
//

import UIKit

class MenuTitleTableViewCell: UITableViewCell {

    @IBOutlet weak var lblMenuTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configCell(profile: ProfileMenuModel){
        lblMenuTitle.text = profile.menuTitle
    }

}

