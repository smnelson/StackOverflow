//
//  Question.swift
//  StackOverflow
//
//  Created by Robert Haworth on 1/30/19.
//  Copyright © 2019 Stacey Nelson. All rights reserved.
//

import Foundation

public struct Question: Codable {
    let owner: String
    let answers: [Answer]
    let tags: [Tag]
    
    enum CodingKeys: String, CodingKey {
        case owner = "Owner"
        case answers = "Answers"
        case tags = "Tags"
    }
}
