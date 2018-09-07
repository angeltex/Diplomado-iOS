//
//  Model.swift
//  iTunes
//
//  Created by Angel Sandoval on 01/09/18.
//  Copyright © 2018 Angel Sandoval. All rights reserved.
//

import Foundation

struct Results: Codable {
    var resultCount: Int
    var results: [Tracks]
}

struct Tracks: Codable{
    var artistName: String
    var trackName: String
    var artworkUyl100: String
}
