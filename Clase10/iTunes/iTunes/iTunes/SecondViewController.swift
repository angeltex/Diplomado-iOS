//
//  SecondViewController.swift
//  iTunes
//
//  Created by Angel Sandoval on 01/09/18.
//  Copyright © 2018 Angel Sandoval. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var fromFirstView = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = fromFirstView

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
