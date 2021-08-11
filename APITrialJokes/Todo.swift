//
//  Todo.swift
//  APITrialJokes
//
//  Created by Andrickson Coste on 11/10/20.
//  Copyright © 2020 Qalab Inc. All rights reserved.
//

import Foundation

struct Todo: Codable {
    let setup: String
    let punchline: String
    
    enum CodingKeys: String, CodingKey {
        case setup
        case punchline
        
    }
    
}
