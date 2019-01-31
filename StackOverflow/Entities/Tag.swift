//
//  Tag.swift
//  StackOverflow
//
//  Created by Robert Haworth on 1/30/19.
//  Copyright © 2019 Stacey Nelson. All rights reserved.
//

import Foundation

public struct Tag: Codable {
    let name: String
    let icon: UIImage?
    
    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case icon = "TagIcon"
    }
}
