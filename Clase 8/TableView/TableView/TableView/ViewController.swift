//
//  ViewController.swift
//  TableView
//
//  Created by Ricardo Manríquez on 25/08/18.
//  Copyright © 2018 FMVZ. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    var nombre = ["Luis","Pedro","Juan","Manuel","Luis","Pedro","Juan","Manuel","Luis","Pedro","Juan","Manuel","Luis","Pedro","Juan","Manuel","Luis","Pedro","Juan","Manuel","Luis","Pedro","Juan","Manuel"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
//numberOfRowsInSection section numero de renglones
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nombre.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "celda"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        cell.textLabel?.text = nombre[indexPath.row]
        return cell
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        let cell = tableView.cellForRow(at: indexPath)
        cell?.accessoryType = .checkmark
        
        let alertController = UIAlertController(title: "Alumnos", message: "Hola como estas?", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        let cancelAction = UIAlertAction(title: "Cancelar", style: .cancel) { (alertAction) in
            print("Click en el cancel")
        }
        alertController.addAction(okAction)
        alertController.addAction(cancelAction)
        present(alertController, animated: true, completion: nil)
        
    }
}

