//
//  ViewController.swift
//  light
//
//  Created by Ricardo Manríquez on 17/08/18.
//  Copyright © 2018 FMVZ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lightbutton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //MARK: TEST
    @IBAction func lightbutton(_ sender: Any) {
        view.backgroundColor = UIColor.init(red: 1, green: 1, blue: 1, alpha: 1)
    }

}

