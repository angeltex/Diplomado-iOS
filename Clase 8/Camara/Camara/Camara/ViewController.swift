//
//  ViewController.swift
//  Camara
//
//  Created by Ricardo Manríquez on 25/08/18.
//  Copyright © 2018 FMVZ. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var photo: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

   //dar acceso a la galeria de fotos.
    //El comportamiento se delega a self es decir al view controller

    @IBAction func takePhoto(_ sender: UIButton) {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        
        //si camara disponible
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            print("Camara Disponible")
        }else{
            print("no hay camara")
            imagePicker.sourceType = .photoLibrary
            present(imagePicker, animated: true, completion: nil)
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        print ("Foto Seleccionada")
        if let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage{
            photo.image = selectedImage
            dismiss(animated: true, completion: nil)
        }
    }
}

