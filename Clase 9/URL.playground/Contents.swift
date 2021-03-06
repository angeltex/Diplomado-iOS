//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

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
let task = URLSession.shared.dataTask(with: url!){ (data,response,error) in
    if let data = data, let string = String(data: data, encoding: .utf8){
    print(string)
    }
}
//Ejecucion de la tarea
task.resume()

PlaygroundPage.current.needsIndefiniteExecution = true
