//
//  Session.swift
//  LabTunes
//
//  Created by Angel Sandoval on 09/11/18.
//  Copyright © 2018 Angel Sandoval. All rights reserved.
//

import Foundation

class Session: NSObject{
    var token: String?
    static let sharedInstance = Session()
    
    override private init() {
        super.init()
    }
    
    func saveSession(){
        token = "1234567890"
    }
}
