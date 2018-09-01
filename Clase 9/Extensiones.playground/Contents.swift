//: Playground - noun: a place where people can play

/*
extension String {
    func grita(){
        print("aaaay")
    }
}

var cadena: String = "Hola mundo"
cadena.grita()
*/
import UIKit
import PlaygroundSupport

let liveViewFrame = CGRect(x: 0, y: 0, width: 500, height: 500)
let liveView = UIView(frame: liveViewFrame)
liveView.backgroundColor = UIColor.cyan

let smallFram = CGRect(x: 0, y: 0, width: 100, height: 100)
let square = UIView(frame: smallFram)
square.backgroundColor = UIColor.black

liveView.addSubview(square)
/*
UIView.animate(withDuration: 3.0){
   square.backgroundColor = UIColor.orange
   square.frame = CGRect(x: 150, y: 150, width: 200, height: 200)
   square.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
    
}*/

/*
UIView.animate(withDuration: 3.0, animations: {
    square.backgroundColor = UIColor.orange
    square.frame = CGRect(x: 150, y: 150, width: 200, height: 200)
}) { (_) in
    UIView.animate(withDuration: 3.0){
    square.backgroundColor = UIColor.brown
    square.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
    }
}*/

/*
UIView.animateKeyframes(withDuration: 3.0, delay: 2.0, options: [.repeat], animations: {
    square.backgroundColor = UIColor.orange
    square.frame = CGRect(x: 400, y: 400, width: 100, height: 100)
}, completion: nil)
 
    //Lottie
    //hayku
*/

UIView.animate(withDuration: 3.0, animations: {
    square.backgroundColor = UIColor.gray
    let scaleTransform = CGAffineTransform(scaleX: 2.0, y: 2.0)
    let rotateTransform = CGAffineTransform(rotationAngle: .pi)
    let translateTranform = CGAffineTransform(translationX: 200, y: 200)
    let combo = scaleTransform.concatenating(rotateTransform).concatenating(translateTranform)
    square.transform = combo
}) { (_) in
    UIView.animate(withDuration: 2.0, animations: {
        square.transform = CGAffineTransform.identity
    })
    
}
    
    PlaygroundPage.current.liveView = liveView

