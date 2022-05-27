//
//  ProfileViewController.swift
//  Navel-UI
//
//  Created by Bansi Mamtora on 27/05/22.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet var header: UIView!
    @IBOutlet weak var tblProfile: UITableView!
    
    var menuTitles = ProfileMenuModel.getMenuTitles()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tblProfile.tableHeaderView = header
        // Do any additional setup after loading the view.
    }
    

}

extension ProfileViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }
}

extension ProfileViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuTitles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let titleCell = tableView.dequeueReusableCell(withIdentifier: "profileTitle") as? MenuTitleTableViewCell else {
            return UITableViewCell()
        }
        let currentData = menuTitles[indexPath.row]
        titleCell.configCell(profile: currentData)
        return titleCell
    }
    
    
}
