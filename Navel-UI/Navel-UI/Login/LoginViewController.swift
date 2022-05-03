//
//  LoginViewController.swift
//  Navel-UI
//
//  Created by Bansi Mamtora on 03/05/22.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var tfEmail: CustomTextField!
    @IBOutlet weak var tfPassword: CustomTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    private func switchBasedNextTextField(_ textField: UITextField) {
        switch textField {
        case self.tfEmail:
            self.tfPassword.becomeFirstResponder()
        case self.tfPassword:
            self.tfPassword.resignFirstResponder()
        default:
            break
        }
    }
    
}

extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.switchBasedNextTextField(textField)
        return true
    }
}
