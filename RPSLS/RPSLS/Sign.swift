//
//  Sign.swift
//  RPSLS
//
//  Created by Eric Martínez Paredes & Miguel Angel Sandoval Texcahuac on 11/08/18.
//  Copyright © 2018 Eric Martínez Paredes. All rights reserved.
//

import Foundation
import GameplayKit

let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

func randomSign() -> Sign {
    let sign = randomChoice.nextInt()
    if sign == 0 {
        return .piedra
    } else if sign == 1 {
        return .tijera
    } else {
        return .papel
    }
}

enum Sign {
    case piedra, papel, tijera
    var choice: Int {
        switch self{
        case .piedra: return 0
        case .tijera: return 1
        case .papel: return 2
        }
    }
    
    func win(_ cpuHand: Sign) -> GameState {
        if self.choice == cpuHand.choice {
            return .draw
        }
        else {
            switch self {
            case .tijera: if self.choice < cpuHand.choice {
                return .win
            } else { return .lose }
            case .papel: if cpuHand.choice == 0 {
                return .win
            } else { return .lose }
            default: if cpuHand.choice == 1 {
                return .win
            } else { return .lose }
            }
        }
    }
}
