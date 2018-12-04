//
//  homeViewController.swift
//  lifeCycle
//
//  Created by Angel Sandoval on 12/10/18.
//  Copyright © 2018 Angel Sandoval. All rights reserved.
//

import UIKit

class homeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let customView = view as! home
        customView.setFunnyColor()
        //self.view.addSubview(loginVC.view) //Agregar la vista
        //
        //self.view.addSubview(loginView)
        // Do any additional setup after loading the view.
        if User.hasSession{
            performSegue(withIdentifier: "showMusic", sender: self)
            //Programaticamente
            //let musicSelectionVC = MusicSelectionViewController()
            //self.navigationController?.pushViewController(musicSelectionVC, animated: true)
        }else{
            performSegue(withIdentifier: "showLogin", sender: self)
            //Programaticamente
            //let loginVC = LoginViewController()
            //self.navigationController?.pushViewController(loginVC, animated: true)
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
      
        //self.present(loginVC, animated:  true) Forma modal

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
