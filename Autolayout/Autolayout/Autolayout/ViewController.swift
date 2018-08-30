//
//  ViewController.swift
//  Autolayout
//
//  Created by Ricardo Manríquez on 11/08/18.
//  Copyright © 2018 FMVZ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var texto: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.cyan
       /* texto.translatesAutoresizingMaskIntoConstraints = false
        texto.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        texto.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        */
    }

   
}

