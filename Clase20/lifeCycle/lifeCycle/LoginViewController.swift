//
//  LoginViewController.swift
//  lifeCycle
//
//  Created by Angel Sandoval on 12/10/18.
//  Copyright © 2018 Angel Sandoval. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    override func loadView() {
        let loginView = Bundle.main.loadNibNamed("LoginView", owner: nil, options: nil)! [0] as! LoginView
        view = loginView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
