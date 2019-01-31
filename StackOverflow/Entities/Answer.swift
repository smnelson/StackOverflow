//
//  Answer.swift
//  StackOverflow
//
//  Created by Robert Haworth on 1/30/19.
//  Copyright © 2019 Stacey Nelson. All rights reserved.
//

import Foundation

public struct Answer: Codable {
    let title: String
    let description: String
    let owner: String
    let tags: [Tag]
    
    enum CodingKeys: String, CodingKey {
        case title = "title"
        case description = "description"
        case owner = "owner"
        case tags = "tags"
    }
}
