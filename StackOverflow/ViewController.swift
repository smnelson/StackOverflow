//
//  ViewController.swift
//  StackOverflow
//
//  Created by Stacey Nelson on 12/16/18.
//  Copyright © 2018 Stacey Nelson. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let primaryLabel = UILabel(frame: .zero)
    let userID = UITextField(frame: .zero)
    let passwordInput = UITextField(frame: .zero)
    //let textFieldWidth = 200
    let submitButton = UIButton(type: .custom)
    let submitButtonColor = UIColor(displayP3Red: 17 / 255.0,
                                    green: 104 / 255.0,
                                    blue: 30 / 255.0,
                                    alpha: 1.0)
    
    init() {
        super.init(nibName: nil, bundle: nil)
        updateSubviews()
        setupSubviews()
        setupConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func updateSubviews() {
        view.addSubview(primaryLabel)
        view.addSubview(userID)
        view.addSubview(passwordInput)
        view.addSubview(submitButton)
    }
    
    func setupSubviews() {
        view.backgroundColor = .white
        
        primaryLabel.text = "StackOverflow"
        primaryLabel.font = UIFont.systemFont(ofSize: 24.0, weight: .bold)
        primaryLabel.textColor = .red
        
        userID.borderStyle = .roundedRect
        passwordInput.borderStyle = .roundedRect
        
        userID.placeholder = "Username"
        passwordInput.placeholder = "Password"
        
        submitButton.layer.cornerRadius = 15.0
        submitButton.backgroundColor = submitButtonColor
        submitButton.setTitle("Submit", for: .normal)
        submitButton.setTitleColor(.white, for: .normal)
        submitButton.addTarget(self, action: #selector(ViewController.submitButtonPressed), for: UIControl.Event.touchUpInside)
    }
    
    func setupConstraints() {
        primaryLabel.snp.makeConstraints { maker in
            maker.centerX.equalToSuperview()
            maker.centerY.equalToSuperview().multipliedBy(0.5)
        }
        
        userID.snp.makeConstraints { field in
            //field.centerX.equalToSuperview()
            field.top.equalTo(primaryLabel.snp.bottom).offset(60)
            //field.width.equalTo(textFieldWidth)
            field.leading.equalTo(view.safeAreaLayoutGuide.snp.leading).offset(90)
            field.trailing.equalTo(view.safeAreaLayoutGuide.snp.trailing).inset(90)
        }
        
        passwordInput.snp.makeConstraints { field in
            //field.centerX.equalToSuperview()
            field.top.equalTo(userID.snp.bottom).offset(8)
            //field.centerY.equalToSuperview().multipliedBy(0.8)
            //field.width.equalTo(textFieldWidth)
            field.leading.equalTo(userID.snp.leading)
            field.trailing.equalTo(userID.snp.trailing)
        }
        
        submitButton.snp.makeConstraints { button in
            button.top.equalTo(passwordInput.snp.bottom).offset(8)
            button.leading.equalTo(passwordInput.snp.leading)
            button.trailing.equalTo(passwordInput.snp.trailing)
        }
    }
    
    @objc
    func submitButtonPressed() {
        print("Button pressed")
    }
}

