//
//  FishService.swift
//  plasticfishes_mvz
//
//  Created by Angel Sandoval on 14/09/18.
//  Copyright © 2018 Angel Sandoval. All rights reserved.
//

import Foundation

struct FishService {
    
    static let shared = FishService()
  let client = Client(baseURLComponents: URLComponents(string: "https://plasticfishes.herokuapp.com")!)
    let jsonDecoder = JSONDecoder()
    
    
     func all() -> [Fish] {
        let decoder = JSONDecoder()
        debugPrint(DataSource().fishes)
        let result = try? decoder.decode([Fish].self, from: DataSource().fishes)
        return result ?? []
    }
    
    func all(_ completion:@escaping ([Fish]) -> Void ){
        client.get(path: "/api/fishes"){ data in
            guard let jsonData = data else {return}
            let result = try? self.jsonDecoder.decode([Fish].self, from: jsonData)
            completion(result ?? [Fish]())
        }
        
    }
    
}
