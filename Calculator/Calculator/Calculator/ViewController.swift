//
//  ViewController.swift
//  Calculator
//
//  Created by Ricardo Manríquez on 18/08/18.
//  Copyright © 2018 FMVZ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textlabel: UILabel!
    var valor = ["0",".","=","1","2","3","+","4","5","6","-","7","8","9"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    } 

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapButton(_ sender: UIButton) {
        let namebutton = sender.tag
       // textlabel.text = String(namebutton)
        textlabel.text = valor[namebutton]
        print(namebutton)
    }
    
}

