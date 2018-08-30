//
//  ViewController.swift
//  Componentes
//
//  Created by Ricardo Manríquez on 18/08/18.
//  Copyright © 2018 FMVZ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        updateImage()
    }

    
    func updateImage(){
        
        if CGFloat(slider.value) <= 1.0 {
            imageView.image = UIImage.init(named:"charmander")
        }
        if CGFloat(slider.value)  <= 2.0 && CGFloat(slider.value)  > 1.0 {
            imageView.image = UIImage.init(named:"charmeleon")
        }
        if slider.value <= 3.0 && slider.value > 2.0 {
            imageView.image = UIImage.init(named:"Charizard")
        }
        if slider.value  <= 4.0 && slider.value > 3.0 {
            imageView.image = UIImage.init(named:"mega_charizard_x")
        }
        if slider.value  > 4{
            imageView.image = UIImage.init(named:"mega_y")
        }
        
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        updateImage()
    }
    
    
}

