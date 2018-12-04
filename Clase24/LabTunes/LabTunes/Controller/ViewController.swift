//
//  ViewController.swift
//  LabTunes
//
//  Created by Angel Sandoval on 09/11/18.
//  Copyright © 2018 Angel Sandoval. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var user: UITextField!
    @IBOutlet weak var password: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func loginButtonWasTouchUoInside(_ sender: UIButton) {
        guard let userName = user.text else { return}
        guard let passwordUser = password.text else{return}
        
        if User.login(userName: userName,   password: passwordUser){
            performSegue(withIdentifier: "loginSuccess", sender: self)
        }
    }
    
}

