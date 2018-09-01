//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

struct Results: Codable {
    var resultCount: Int
    var results: [Tracks]
}

struct Tracks: Codable{
    var artistName: String
    var collectionName:String
}

let Baseurl = URL(string: "https://itunes.apple.com/search?")!

extension URL{
    func withQueries(_ queries: [String : String]) -> URL?{
        var components = URLComponents(url: self, resolvingAgainstBaseURL:true)
        components?.queryItems = queries.flatMap{ URLQueryItem(name: $0.0, value: $0.1)}
        return components?.url
    }
}

let query : [String: String] = [
    "term" : "caligaris",
    "limit" : "10"
]
let url = Baseurl.withQueries(query)

//declaracion de la tarea
let jsonDecoder = JSONDecoder()
let task = URLSession.shared.dataTask(with: url!){ (data,response,error) in
   // if let data = data, let trackDictionary = try? JSONDecoder().decode([String: String].self, from: data) {
        //Lo que tu leas parcealo o decodificalo a este modelo [String: String]
    if let data = data, let trackDictionary = try? jsonDecoder.decode(Results.self, from: data) {
            print(trackDictionary)
    }else {
        print(error.debugDescription)
    }
}

//Ejecucion de la tarea
task.resume()

PlaygroundPage.current.needsIndefiniteExecution = true
