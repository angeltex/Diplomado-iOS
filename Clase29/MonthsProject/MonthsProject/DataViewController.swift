//
//  DataViewController.swift
//  MonthsProject
//
//  Created by Angel Sandoval on 30/11/18.
//  Copyright © 2018 Angel Sandoval. All rights reserved.
//

import UIKit

class DataViewController: UIViewController {
    @IBOutlet weak var dataLabel : UILabel!
    var dataObject: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.dataLabel!.text = dataObject
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
