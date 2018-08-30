//
//  GameState.swift
//  RPSLS
//
//  Created by Eric Martínez Paredes & Miguel Angel Sandoval Texcahuac on 15/08/18.
//  Copyright © 2018 Eric Martínez Paredes. All rights reserved.
//

import Foundation

enum GameState {
    case start, win, lose, draw
    var state: String {
        switch self {
        case .start: return "Rock, Paper, Scissors?"
        case .win: return "You win"
        case .draw: return "Draw"
        case .lose: return "You lose"
        }
    }
}
