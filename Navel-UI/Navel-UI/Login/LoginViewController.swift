//
//  LoginViewController.swift
//  Navel-UI
//
//  Created by Bansi Mamtora on 03/05/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var tfEmail: BaseTextField!
    @IBOutlet weak var tfPassword: BaseTextField!
    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentInsetAdjustmentBehavior = .never
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = .clear
    }
    
    //MARK: - Actions
    @IBAction func registerAction(_ sender: UIButton) {
        if let registerVC = UIStoryboard(name: Constants.authenticationStoryboard, bundle: nil).instantiateViewController(withIdentifier: Constants.registerViewController) as? RegisterViewController {
            navigationController?.pushViewController(registerVC, animated: true)
        }
    }
    
    @IBAction func loginAction(_ sender: BaseFilledButton) {
        guard let email = tfEmail.text, let password = tfPassword.text else {
            return
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
}

extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.switchBasedNextTextField(textField)
        return true
    }
}
