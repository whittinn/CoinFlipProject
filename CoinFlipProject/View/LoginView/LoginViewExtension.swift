//
//  LoginViewExtension.swift
//  CoinFlipProject
//
//  Created by Nathaniel Whittington on 7/29/22.
//

import Foundation
import UIKit

extension LoginViewController {
    
    @objc func loginButtonNavigation(){
        // Validation function throws, must catch each error.
        do{
            
            _ = try vm.validateUserNameFieldIsEmpty(text: userNameField.text)
            _ = try vm.validateUserNameFieldCount(text: userNameField.text)
            _ = try vm.validatePasswordFieldCount(text: passwordField.text)
            _ = try vm.validatePasswordFieldIsEmpty(text: passwordField.text)
            let vc = CryptoTableViewController()
            self.navigationController?.pushViewController(vc, animated: true)
            
            //Custom UIAlert Controllers for each LoginViewController text field case.
        }catch LoginFieldErrors.UserNameFieldNoText{
            let alert = UIAlertController(title: "UserNameField Is Empty", message: nil, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
            
        }catch LoginFieldErrors.UserNameFieldNotEnoughCharacters{
            let alert = UIAlertController(title: "UserNameField Needs 7 Characters", message: nil, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
            
        }catch LoginFieldErrors.PasswordFieldNoText{
            let alert = UIAlertController(title: "PasswordField Is Empty", message: nil, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
            
        }catch LoginFieldErrors.PasswordFieldNotEnoughCharacters{
            let alert = UIAlertController(title: "PasswordField Needs 7 Characters", message: nil, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
            
        }catch{
            print("Some Error")
        }
        
        
        
    }
    
    
}
