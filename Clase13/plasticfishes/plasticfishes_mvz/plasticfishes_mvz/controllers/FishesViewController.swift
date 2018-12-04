//
//  FishesViewController.swift
//  plasticfishes_mvz
//
//  Created by Angel Sandoval on 21/09/18.
//  Copyright © 2018 Angel Sandoval. All rights reserved.
//

import UIKit

class FishesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var fishes = [Fish](){
        didSet {
            self.fishesTableView.reloadData()
        }
        
    }

    //MARK: vire Methods
    @IBOutlet weak var fishesTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        loadFishes()
        settupView()

    }
    
    func settupView(){
        navigationItem.title = "Plastic Fishes 🐳"
        fishesTableView.register(UINib(nibName: "FishesTableViewCell", bundle: nil), forCellReuseIdentifier: "fishCell")
        fishesTableView.delegate = self
        fishesTableView.dataSource = self
        
        
    }
    func doFishing(){
       // fishesArray = FishService.listAll()
        
    }
    
    // MARK -Data
    func loadFishes(){
     //   Client.shared.get(path: "/api/fishes", successHandler: nil)
        FishService.shared.all { fishes in self.fishes = fishes }

    }
    

    //MARK: Table View Protocols Methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fishes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = fishesTableView.dequeueReusableCell(withIdentifier: "fishCell", for: indexPath) as? FishesTableViewCell else {return UITableViewCell() }
        let fish = fishes[indexPath.row]
        cell.fisheTitleLabel.text = fish.name
        cell.fishSubtitleLabel.text = fish.text
        DispatchQueue.global(qos: .background).async {
            if let imgData = fish.imageData{
                DispatchQueue.main.async {
                    cell.fishImageView.image = UIImage(data: imgData)
                }
            }
        }
        

        cell.accessoryType = .disclosureIndicator
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 109
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyboard = UIStoryboard(name: "Detail", bundle: Bundle.main)
        let viewController = storyboard.instantiateViewController(withIdentifier: "detailVC")
        navigationController?.pushViewController(viewController, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
    }
  
}
