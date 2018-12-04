//
//  MusicViewController.swift
//  LabTunes
//
//  Created by Angel Sandoval on 10/11/18.
//  Copyright © 2018 Angel Sandoval. All rights reserved.
//

import UIKit

class MusicViewController: UIViewController {

    var songs : [Song] = []
    @IBOutlet weak var songTableView: UITableView!

    let searchController = UISearchController(searchResultsController: nil)

    
    override func viewDidLoad() {
        super.viewDidLoad()
        donwloadSongs()
        setupSearchBar()
        // Do any additional setup after loading the view.
    }
    
    func donwloadSongs() {
        Music.fetchSongs { (results: [Song] ) in
            self.songs = results
            DispatchQueue.main.async {
                self.songTableView.reloadData()
            }
        }
    }
    
    func setupSearchBar(){
        searchController.searchResultsUpdater = self
        searchController.searchBar.placeholder = "searchSongs"
        navigationItem.searchController = searchController
        definesPresentationContext = true
    }

    func downloadSongsByName(name: String){
        Music.fetchSongs(songName: name) { (results: [Song]) in
            self.songs = results
            DispatchQueue.main.async {
                self.songTableView.reloadData()
            }
        }
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

extension MusicViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "musicCell", for: indexPath)
        cell.textLabel?.text = songs[indexPath.row].artist
        
        return cell
    }
    
}


extension MusicViewController: UISearchResultsUpdating{
   func updateSearchResults(for searchController: UISearchController) {
            downloadSongsByName(name: searchController.searchBar.text!)
}

}
