//
//  Squareview.swift
//  SimpleLine
//
//  Created by Angel Sandoval on 13/10/18.
//  Copyright © 2018 Angel Sandoval. All rights reserved.
//

import UIKit

class Squareview: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    */
    override func draw(_ rect: CGRect) {
        ///* UIBezierPath
        let aPath = UIBezierPath()
        aPath.lineWidth = 8
         aPath.move(to: CGPoint(x:10, y: 0))
         aPath.addLine(to: CGPoint(x:frame.width-10, y: 0))
        aPath.addQuadCurve(to: CGPoint(x: frame.width, y: 10), controlPoint: CGPoint(x: frame.width, y: 0))
         aPath.addLine(to: CGPoint(x:frame.width , y:frame.height-10))
        aPath.addQuadCurve(to: CGPoint(x: frame.width-10, y: frame.height), controlPoint: CGPoint(x: frame.width, y: frame.height))
         aPath.addLine(to: CGPoint(x: 10, y:frame.height ))
        aPath.addQuadCurve(to: CGPoint(x: 0, y: frame.height-10), controlPoint: CGPoint(x: 0, y: frame.height))
         aPath.addLine(to: CGPoint(x: 0, y: 10))
         aPath.addQuadCurve(to: CGPoint(x: 10, y: 0), controlPoint: CGPoint(x: 0, y: 0))
        UIColor.black.set()
        aPath.stroke()
        // */
         /* A MANO
        let context = UIGraphicsGetCurrentContext()
        context?.setLineWidth(5)
        context?.move(to: CGPoint(x:10, y: 0))
        context?.addLine(to: CGPoint(x:frame.width-10, y: 0))
        context?.addQuadCurve(to: CGPoint(x: frame.width, y: 10), control: CGPoint(x: frame.width, y: 0))
        context?.addLine(to: CGPoint(x:frame.width , y:frame.height-10))
        context?.addQuadCurve(to: CGPoint(x: frame.width-10, y: frame.height), control: CGPoint(x: frame.width, y: frame.height))
        context?.addLine(to: CGPoint(x: 10, y:frame.height ))
        context?.addQuadCurve(to: CGPoint(x: 0, y: frame.height-10), control: CGPoint(x: 0, y: frame.height))
        context?.addLine(to: CGPoint(x: 0, y: 10))
        context?.addQuadCurve(to: CGPoint(x: 10, y: 0), control: CGPoint(x: 0, y: 0))
        context?.strokePath()
         */
    }
    

}
