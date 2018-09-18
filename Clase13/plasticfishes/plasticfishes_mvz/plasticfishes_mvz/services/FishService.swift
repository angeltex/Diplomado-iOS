//
//  FishService.swift
//  plasticfishes_mvz
//
//  Created by Angel Sandoval on 14/09/18.
//  Copyright © 2018 Angel Sandoval. All rights reserved.
//

import Foundation

struct FishService {
    static func list_all() -> [Fish] {
        let decoder = JSONDecoder()
        debugPrint(DataSource().fishes)
        let result = try? decoder.decode([Fish].self, from: DataSource().fishes)
        return result ?? []
/*        do{
            return try decoder.decode([Fish].self, from: DataSource().fishes)
        }catch{
            //Notify the user or a third party
        }
    } */
    }
    
}
