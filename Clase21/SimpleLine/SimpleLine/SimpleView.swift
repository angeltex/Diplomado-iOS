//
//  SimpleView.swift
//  SimpleLine
//
//  Created by Angel Sandoval on 13/10/18.
//  Copyright © 2018 Angel Sandoval. All rights reserved.
//

import UIKit

class SimpleView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    */
    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        //context?.setLineWidth(20)
        /*context?.move(to: CGPoint(x: 0, y: 0))
        context?.addLine(to: CGPoint(x: 200, y: 250))
        context?.setStrokeColor(UIColor.cyan.cgColor)
        context?.strokePath()*/
        /*context?.move(to: CGPoint(x: 200, y: 250))
        context?.addLine(to: CGPoint(x: 200, y: frame.height))
        context?.setStrokeColor(UIColor.brown.cgColor)
        */
        context?.move(to: CGPoint(x:50, y: 50))
        context?.addLine(to: CGPoint(x:150, y: 50))
        context?.addQuadCurve(to: CGPoint(x: 160, y: 60), control: CGPoint(x: 160, y: 50))
        context?.addLine(to: CGPoint(x: 150, y: 160))
        context?.addQuadCurve(to: CGPoint(x: 150, y: 160), control: CGPoint(x: 160, y: 160))
        context?.addLine(to: CGPoint(x: 50, y: 160))
        context?.addLine(to: CGPoint(x: 50, y: 50))
        context?.strokePath()
   // Drawing code
    }
    

}
