//
//  ViewController.swift
//  TrafficSegues
//
//  Created by Ricardo Manríquez on 24/08/18.
//  Copyright © 2018 FMVZ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var switchSegue: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
            Thread.sleep(forTimeInterval: 1.0)
            // Override point for customization after application launch.
            return true
        }
        
        tabBarItem.badgeValue = "nuevos"
        tabBarController?.title = "Green"
    }
    
  /*  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "rojo-verde"{
            segue.destination.navigationItem.title = textField.text
        }
    }*/
    
    //funcion un solo boton usando tags
    let vistas = ["toPurple","toYellow"]
    
    @IBAction func yellowButton(_ sender: Any) {
        if switchSegue.isOn{
            performSegue(withIdentifier: vistas[(sender as AnyObject).tag], sender: nil)
        }
    }
    //Funcion por boton
   /* @IBAction func purpleButton(_ sender: Any) {
        if switchSegue.isOn{
            performSegue(withIdentifier: "toPurple", sender: nil)
        }
    }*/
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Se registra como destino para aplicar el unwind
    @IBAction func unwindToRed(unwindSegue: UIStoryboardSegue) {
        
    }
    

}

