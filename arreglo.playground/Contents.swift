//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
let highScores: [String] = ["abc","def"]

let friends = ["Name","Name2","Name3"]

var list = [String]()
list.append("Banana")

struct Song {
    let title: String
    let artist: String
    let duration: Int
    
    var convertduration : String{
        let min = duration / 60
        let seg = duration % 60
        return "\(min) min \(seg) seg"
    }
}

let song = Song(title: "No, no, no", artist: "Fizz", duration: 150)
let song2 = Song(title: "Rema tu bote", artist: "Desconocido", duration: 30)

print(song.convertduration)

var songs = [song,song2]
print(songs[1])
