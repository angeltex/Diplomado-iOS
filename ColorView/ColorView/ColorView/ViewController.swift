//
//  ViewController.swift
//  ColorView
//
//  Created by Ricardo Manríquez on 11/08/18.
//  Copyright © 2018 FMVZ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
 
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.borderWidth=5
        colorView.layer.cornerRadius=20
        colorView.layer.borderColor=UIColor.black.cgColor
        updateControl()
        updateColor()
       
    }
    
    func updateColor(){
        var red : CGFloat = 0
        var green : CGFloat = 0
        var blue : CGFloat = 0
        
        if redSwitch.isOn{
            red = CGFloat(redSlider.value)
        }
        if greenSwitch.isOn{
            green = CGFloat(greenSlider.value)
        }
        if blueSwitch.isOn{
            blue = CGFloat(blueSlider.value)
        }
        colorView.backgroundColor=UIColor(displayP3Red: red, green: green, blue: blue, alpha: 1)
    }
    
    
    @IBAction func swtichChanged(_ sender: UISwitch) {
        updateControl()
        updateColor()
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        updateColor()
    }
    
    func updateControl(){
        redSlider.isEnabled = redSwitch.isOn
        greenSlider.isEnabled = greenSwitch.isOn
        blueSlider.isEnabled = blueSwitch.isOn
    }
    
    @IBAction func Reset(_ sender: Any) {
        redSlider.value = 1
        greenSlider.value = 1
        blueSlider.value = 1
        redSwitch.isOn = false
        greenSwitch.isOn = false
        blueSwitch.isOn = false
        updateControl()
        updateColor()

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

