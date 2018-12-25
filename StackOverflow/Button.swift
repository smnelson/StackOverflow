//
//  Button.swift
//  StackOverflow
//
//  Created by Stacey Nelson on 12/24/18.
//  Copyright © 2018 Stacey Nelson. All rights reserved.
//

import UIKit

class Button: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    let darkButtonColor = UIColor(displayP3Red: 17 / 255.0,
                                  green: 104 / 255.0,
                                  blue: 30 / 255.0,
                                  alpha: 1.0)
    let lightButtonColor = UIColor(displayP3Red: 29 / 255.0,
                                   green: 165 / 255.0,
                                   blue: 50 / 255.0,
                                   alpha: 1.0)
    
    
    override open var isHighlighted: Bool {
        didSet {
            backgroundColor = isHighlighted ? lightButtonColor : darkButtonColor
        }
    }

}
