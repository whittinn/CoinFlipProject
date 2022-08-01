//
//  ViewController.swift
//  CoinFlipProject
//
//  Created by Nathaniel Whittington on 7/29/22.
//

import UIKit

open class LoginViewController: UIViewController {
    
    var vm = ViewModel()
    
    private let loginTitle: UILabel = {
        let loginTitle = UILabel()
        loginTitle.translatesAutoresizingMaskIntoConstraints = false
        loginTitle.text = "Welcome To Coin Xpress"
        loginTitle.font = UIFont(name: "Avenir-Medium", size: 20)
        loginTitle.textColor = UIColor.black
        return loginTitle
    }()
    
    let userNameField: UITextField = {
        let userNameField = UITextField()
        userNameField.translatesAutoresizingMaskIntoConstraints = false
        userNameField.backgroundColor = .white
        userNameField.placeholder = "Username"
        userNameField.keyboardType = UIKeyboardType.default
        userNameField.returnKeyType = UIReturnKeyType.done
        userNameField.autocorrectionType = UITextAutocorrectionType.no
        userNameField.font = UIFont.systemFont(ofSize: 13)
        userNameField.borderStyle = UITextField.BorderStyle.roundedRect
        userNameField.clearButtonMode = UITextField.ViewMode.whileEditing;
        userNameField.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        return userNameField
    }()
    
    let passwordField: UITextField = {
        let passwordField = UITextField()
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        passwordField.backgroundColor = .white
        passwordField.placeholder = "Password"
        passwordField.keyboardType = UIKeyboardType.default
        passwordField.returnKeyType = UIReturnKeyType.done
        passwordField.autocorrectionType = UITextAutocorrectionType.no
        passwordField.font = UIFont.systemFont(ofSize: 13)
        passwordField.borderStyle = UITextField.BorderStyle.roundedRect
        passwordField.clearButtonMode = UITextField.ViewMode.whileEditing;
        passwordField.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        return passwordField
    }()
    
    let loginButton: UIButton = {
        let loginButton = UIButton(type: .system)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.frame = CGRect(x: 100, y: 100, width: 100, height: 50)
        loginButton.backgroundColor = .white
        loginButton.setTitle("Login", for: .normal)
        loginButton.layer.cornerRadius = 5
        loginButton.layer.borderWidth = 1
        loginButton.layer.borderColor = UIColor.black.cgColor
        return loginButton
    }()
    
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
        //Navigation to CryptoTableView after validation.
        loginButton.addTarget(self, action: #selector(loginButtonNavigation), for: .touchUpInside)
        addSubViews()
    }
    
    func addSubViews(){
        view.addSubview(loginTitle)
        view.addSubview(userNameField)
        view.addSubview(passwordField)
        view.addSubview(loginButton)
        
        loginTitle.topAnchor.constraint(equalTo: view.topAnchor, constant: 80).isActive = true
        loginTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginTitle.textAlignment = .center
        loginTitle.widthAnchor.constraint(equalToConstant: 500).isActive = true
        
        userNameField.topAnchor.constraint(equalTo: loginTitle.bottomAnchor, constant: 40).isActive  = true
        userNameField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        userNameField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        userNameField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        passwordField.topAnchor.constraint(equalTo: userNameField.topAnchor, constant: 40).isActive = true
        passwordField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        passwordField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        passwordField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        loginButton.topAnchor.constraint(equalTo: passwordField.bottomAnchor, constant: 30).isActive = true
        loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
    }
    
    
}
