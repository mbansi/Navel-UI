//
//  SignUpViewController.swift
//  Navel-UI
//
//  Created by Bansi Mamtora on 04/05/22.
//

import UIKit

class RegisterViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var tfFullName: BaseTextField!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var tfPassword: BaseTextField!
    @IBOutlet weak var tfEmail: BaseTextField!
    
    //MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentInsetAdjustmentBehavior = .never
        
        let backButton = UIBarButtonItem(title: nil, style: .plain, target: self, action: #selector(pop))
        backButton.setBackgroundImage(UIImage(named: Constants.back), for: .normal, barMetrics: .default)
        navigationItem.setLeftBarButton(backButton, animated: false)
    }
    
    //MARK: - Actions
    @IBAction func loginAction(_ sender: BaseButton) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func registerAction(_ sender: BaseFilledButton) {
        guard let email = tfEmail.text, let password = tfPassword.text,let fullname = tfFullName.text else {
            return
        }
       
        if fullname.isEmpty == true {
          showAlert(R.string.localizable.noName(), R.string.localizable.pleaseEnterYourName())
        }
        if email.isEmpty == true {
            showAlert(R.string.localizable.noEmail(), R.string.localizable.pleaseEnterYourEmail())
        }
        if isValidEmail(email) == false {
            showAlert(R.string.localizable.invalidEmail(), R.string.localizable.pleaseEnterAProperEmail())
        }
        if password.isEmpty == true {
           showAlert(R.string.localizable.noPassword(), R.string.localizable.pleaseEnterYourPassword())
        }
    }
    
    //MARK: - Functions
    func showAlert(_ title: String,_ message: String){
        let alert = UIAlertController(title: title, message:   message , preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: R.string.localizable.oK(), style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    func isValidEmail(_ email: String) -> Bool {
        let emailRegEx = Constants.emailRegex
        let emailPred = NSPredicate(format: Constants.matchEmail, emailRegEx)
        return emailPred.evaluate(with: email)
    }
    
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
