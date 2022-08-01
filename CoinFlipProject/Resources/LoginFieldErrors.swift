//
//  LoginValidation.swift
//  CoinFlipProject
//
//  Created by Nathaniel Whittington on 7/31/22.
//

import Foundation


public enum LoginFieldErrors: Error {
    case UserNameFieldNoText
    case UserNameFieldNotEnoughCharacters
    case PasswordFieldNoText
    case PasswordFieldNotEnoughCharacters
}
