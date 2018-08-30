//
//  ViewController.swift
//  Tarjeta
//
//  Created by Ricardo Manríquez on 18/08/18.
//  Copyright © 2018 FMVZ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func respondToTap(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: view)
        print(location)
    }
}

