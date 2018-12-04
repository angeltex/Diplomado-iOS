//
//  ModelController.swift
//  MonthsProject
//
//  Created by Angel Sandoval on 30/11/18.
//  Copyright © 2018 Angel Sandoval. All rights reserved.
//

import UIKit

class ModelController: NSObject {
    var pageData: [String] = []
    
    //Singleton
    //    static let sharedInstance = ModelController
    //
    //    private override init() {
    //        super.init()
    //        //Create the data model
    //        let dateFormatter = DateFormatter()
    //        pageData = dateFormatter.monthSymbols
    //    }
    
    override init() {
        super.init()
        //Create the data model
        let dateFormatter = DateFormatter()
        pageData = dateFormatter.monthSymbols
    }
    
    func viewControllerAtIndex(_ index: Int, storyboard: UIStoryboard) -> DataViewController? {
        //Retrun the data view controller for giben index
        if(self.pageData.count == 0) || (index >= self.pageData.count){
            return nil
        }
        //Create a new view controller and pass suitable data.
        let dataViewController = storyboard.instantiateViewController(withIdentifier: "DataViewController") as! DataViewController
        dataViewController.dataObject = self.pageData[index]
        return dataViewController
    }
    
    
}

extension ModelController: UIPageViewControllerDataSource {
    
    func indexOfVIewController(_ viewCotroller: DataViewController) -> Int {
        return pageData.index(of: viewCotroller.dataObject) ?? NSNotFound
    }
    
func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
    var index = self.indexOfVIewController(viewController as! DataViewController)
    if (index == 0) || (index == NSNotFound){
        return nil
    }
    index -= 1
    return self.viewControllerAtIndex(index, storyboard: viewController.storyboard!)
}

func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
    var index = self.indexOfVIewController(viewController as! DataViewController)
    if index == NSNotFound{
        return nil
    }
    index += 1
    if index == self.pageData.count{
        return nil
    }
    return self.viewControllerAtIndex(index, storyboard: viewController.storyboard!)
    }
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return self.pageData.count
    }
    
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        return 0
    }
    
}

