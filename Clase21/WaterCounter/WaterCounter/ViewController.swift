//
//  ViewController.swift
//  WaterCounter
//
//  Created by Angel Sandoval on 13/10/18.
//  Copyright © 2018 Angel Sandoval. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counter: CounterView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func plusButton(_ sender: ActionButton) {
        counter.counter = counter.counter + 1
        
    }
    @IBAction func restButton(_ sender: ActionButton) {
        counter.counter = counter.counter - 1

    }
}

