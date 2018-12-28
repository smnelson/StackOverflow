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
    var userName:String { get set }
    var userPassword:String { get set }
    
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
    
    var userName = ""
    var userPassword = ""
    var loginStatus: LoginStatus?
    
    func submitLogin() {
    }
    
    var inputs: LoginViewModelInputs { return self }
    var outputs: LoginViewModelOutputs { return self }
}
