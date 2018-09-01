//
//  ViewController.swift
//  ISpy
//
//  Created by Angel Sandoval on 30/08/18.
//  Copyright © 2018 FMVZ. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    @IBOutlet weak var imageZoom: UIImageView!
    @IBOutlet weak var ScrollViewContent: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateZoomFor(size: view.bounds.size)
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return self.imageZoom
    }
    
    
    func updateZoomFor(size: CGSize){
        let widthScale = size.width / imageZoom.bounds.width
        let heightScale = size.height / imageZoom.bounds.height
        let scale = min(widthScale, heightScale)
        ScrollViewContent.minimumZoomScale = scale

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

