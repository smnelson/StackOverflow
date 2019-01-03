//
//  LoginViewModel.swift
//  StackOverflow
//
//  Created by Stacey Nelson on 12/27/18.
//  Copyright © 2018 Stacey Nelson. All rights reserved.
//

import Foundation

enum LoginStatus {
    case Success, Failure(Error)
}

protocol LoginViewModelInputs {
    func updateUsername(username: String)
    func updatePassword(password: String)
    func submitLogin()
}

protocol LoginViewModelOutputs {
    var loginStatus:LoginStatus? { get }
}

protocol LoginViewModelType {
    var inputs: LoginViewModelInputs { get }
    var outputs: LoginViewModelOutputs { get }
}

class LoginViewModel: LoginViewModelType, LoginViewModelInputs, LoginViewModelOutputs {
    var userName = "" {
        didSet {
            print("UserName: " + userName)
        }
    }
    
    var userPassword = "" {
        didSet {
            print("Password: " + userPassword)
        }
    }
    var loginStatus: LoginStatus?
    
    func submitLogin() {
        
    }
    
    func updateUsername(username: String) {
        userName = username
    }
    
    func updatePassword(password: String) {
        userPassword = password
    }
    
    var inputs: LoginViewModelInputs { return self }
    var outputs: LoginViewModelOutputs { return self }
}
