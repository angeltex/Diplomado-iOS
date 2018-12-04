//
//  CounterView.swift
//  WaterCounter
//
//  Created by Angel Sandoval on 13/10/18.
//  Copyright © 2018 Angel Sandoval. All rights reserved.
//

import UIKit

@IBDesignable
class CounterView: UIView {

    @IBInspectable var counterColor: UIColor = UIColor.orange
    
    private struct Constants {
        static let numberOfGlasses = 8
    }
    
    @IBInspectable var counter: Int = 2{
        didSet{
            if counter <= Constants.numberOfGlasses{
                setNeedsDisplay()
            }
        }
    }
    
    override func draw(_ rect: CGRect) {
        let center = CGPoint(x: bounds.width / 2, y: bounds.height / 2)
        let radius : CGFloat = max(bounds.width, bounds.height)
        let starAngle: CGFloat = 3 * .pi / 4
        let endAngle: CGFloat = .pi / 4
        
        let path = UIBezierPath(arcCenter: center, radius: radius/2 - 76/2, startAngle: starAngle, endAngle: endAngle, clockwise: true)
        path.lineWidth = 76
        counterColor.setStroke()
        path.stroke()
        
        let angleDifference: CGFloat = 2 * .pi - starAngle + endAngle
        let arcLengthPerGlass = angleDifference / CGFloat(Constants.numberOfGlasses)
        let outlineEndAngle = arcLengthPerGlass * CGFloat(counter) + starAngle
        let outlinePath = UIBezierPath(arcCenter: center, radius: bounds.width/2 - 76/2, startAngle: starAngle, endAngle: outlineEndAngle, clockwise: true)
        /*
        let outlinePath = UIBezierPath(arcCenter: center, radius: bounds.width/2 - 4, startAngle: starAngle, endAngle: outlineEndAngle, clockwise: true)
        outlinePath.addArc(withCenter: center,radius:bounds.width/2 - 76 + 4, startAngle: outlineEndAngle, endAngle: starAngle, clockwise: false)
         */
        
        //outlinePath.close()
        outlinePath.lineWidth = 76
        UIColor.cyan.setStroke()
        outlinePath.stroke()
        
        // Drawing code
    }

}
