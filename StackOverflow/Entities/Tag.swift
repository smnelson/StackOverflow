//
//  Tag.swift
//  StackOverflow
//
//  Created by Robert Haworth on 1/30/19.
//  Copyright © 2019 Stacey Nelson. All rights reserved.
//

import Foundation
import UIKit

public struct Tag: Codable {
    let name: String
    let iconURL: String?
    
    enum CodingKeys: String, CodingKey {
        case name = "name"
        case iconURL = "TagURL"
    }
}
