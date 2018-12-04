//
//  User.swift
//  LabTunes
//
//  Created by Angel Sandoval on 09/11/18.
//  Copyright © 2018 Angel Sandoval. All rights reserved.
//

import Foundation

class User{
    static let userName = "iOSLab"
    static let password = "verysecurepassword"
    static let session = Session.sharedInstance
    
    static func login(userName: String, password: String) -> Bool {
        if self.userName == userName{
            session.saveSession()
            return true
        }
        return false
    }
    
    static func fetchSongs() throws{
       guard let token = Session.sharedInstance.token else{
            throw UserError.notSessionAvailable
        }
        debugPrint(token)
    }
    
    enum UserError: Error{
        case notSessionAvailable
    }
    
}
