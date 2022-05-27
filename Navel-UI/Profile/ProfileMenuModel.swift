//
//  ProfileMenuModel.swift
//  Navel-UI
//
//  Created by Bansi Mamtora on 27/05/22.
//

import Foundation

class ProfileMenuModel {
    
    var menuTitle: String
    
    init(_ title: String) {
        menuTitle = title
    }

    static func getMenuTitles() -> [ProfileMenuModel] {
        return [ ProfileMenuModel("Your Profile"),
                 ProfileMenuModel("Booking List"),
                 ProfileMenuModel("Promotion"),
                 ProfileMenuModel("Payment"),
                 ProfileMenuModel("Setting"),
                 ProfileMenuModel("Logout")]
        
    }
}

