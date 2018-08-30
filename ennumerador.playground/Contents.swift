//: Playground - noun: a place where people can play

import UIKit

// para enumeradores
enum LunchChoice{
    case pasta, pizza, soup, buger
    var order : String {
        if self == .soup{
        return "Toma tu sopa 🍲"
    }else if self == .pasta{
        return "Toma tu pasta"
    }else{
        return "No me gusto lo que seleccionaste"
        }
        
    }
}

var foodEnum : LunchChoice
foodEnum = .soup
foodEnum.hashValue


if foodEnum == .soup{
    "Toma tu sopa"
}else if foodEnum == .pasta{
    "Toma tu pasta"
}else{
    "No me gusto lo que seleccionaste"
}

func cookLucnh (_ choice: LunchChoice) -> String{
    if choice == .soup{
        return "Toma tu sopa 🍲"
    }else if choice == .pasta{
        return "Toma tu pasta"
    }else{
        return "No me gusto lo que seleccionaste"
    }

}

enum Suit {
    case spades,hearts,diamonds,clubs
    var rank: Int {
        switch self{
        case.spades : return 4
        case.hearts : return 3
        case.diamonds : return 2
        case.clubs : return 1
        }
    }
    func beats(_ otherSuit: Suit) -> Bool{
        return self.rank > otherSuit.rank
    }
}

var mySuit: Suit = .clubs
var yourSuit: Suit = .diamonds
//mySuit.rank > yourSuit.rank
mySuit.beats(yourSuit)


// cuando se usan enumeradores y cuando no.


