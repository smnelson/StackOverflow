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
    }
    
    func setupSubviews() {
        view.backgroundColor = .white
        
        primaryLabel.text = "Emergency Alert Text!"
        primaryLabel.font = UIFont.systemFont(ofSize: 24.0, weight: .bold)
        primaryLabel.textColor = .red
    }
    
    func setupConstraints() {
        primaryLabel.snp.makeConstraints { maker in
            maker.centerX.equalToSuperview()
            maker.centerY.equalToSuperview().multipliedBy(0.5)
        }
    }
}

