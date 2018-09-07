//
//  IntermediaryModels.swift
//  OrderApp
//
//  Created by Angel Sandoval on 07/09/18.
//  Copyright © 2018 Angel Sandoval. All rights reserved.
//

import Foundation

struct Categories: Codable {
    let categories: [String]
}

struct PreparationTime: Codable {
    let prepTime: Int
    
    enum CodingKeys: String, CodingKey {
        case prepTime = "preparation_time"
    }
}
