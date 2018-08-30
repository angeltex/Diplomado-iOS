//
//  Sign.swift
//  JuegoPPT
//
//  Created by Ricardo Manríquez on 11/08/18.
//  Copyright © 2018 FMVZ. All rights reserved.
//

import UIKit

enum Sign{
    case piedra,papel,tijeras
    var rank : Int {
        switch self{
        case .papel : return 1
        case .tijeras : return 2
        case .piedra : return 3
        }
        
    }
    func play(_ otherSelect: Sign) -> String{
        if self.rank > otherSelect.rank{
            return "Tu ganas"
        }else{
            return "Jajajaj tu pierdes"
        }
    }
    
}

