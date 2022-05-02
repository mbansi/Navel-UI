//
//  SignUpViewController.swift
//  Navel-UI
//
//  Created by Bansi Mamtora on 04/05/22.
//

import UIKit

class RegisterViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var tfFullName: CustomTextField!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var tfPassword: CustomTextField!
    @IBOutlet weak var tfEmail: CustomTextField!
    
    //MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentInsetAdjustmentBehavior = .never
        
        let backButton = UIBarButtonItem(title: nil, style: .plain, target: self, action: #selector(pop))
        backButton.setBackgroundImage(UIImage(named: "Back"), for: .normal, barMetrics: .default)
        navigationItem.setLeftBarButton(backButton, animated: false)
    }
    
    //MARK: - Functions
    @objc func pop() {
        navigationController?.popViewController(animated: true)
    }
    
    private func switchBasedNextTextField(_ textField: UITextField) {
        switch textField {
        case self.tfFullName:
            self.tfEmail.becomeFirstResponder()
        case self.tfEmail:
            self.tfPassword.becomeFirstResponder()
        case self.tfPassword:
            self.tfPassword.resignFirstResponder()
        default:
            break
        }
    }
}

//MARK: - Textview Delegate
extension RegisterViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.switchBasedNextTextField(textField)
        return true
    }
}
