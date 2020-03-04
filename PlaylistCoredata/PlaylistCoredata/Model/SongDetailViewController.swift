//
//  SongDetailViewController.swift
//  PlaylistCoredata
//
//  Created by Daniel Merchan Rico on 3/4/20.
//  Copyright © 2020 Trevor Walker. All rights reserved.
//

import UIKit

class SongDetailViewController: UIViewController {
    @IBOutlet weak var artistNameTextField: UITextField!
    @IBOutlet weak var songNameTextField: UITextField!
    
    @IBOutlet weak var tableView: UITableView!
    
    // Properties
    let playlist: Playlist?
    
    //Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self

    }
    
// actions
    @IBAction func addSongButtonTapped(_ sender: Any) {
        guard let playlist = playlist, let artistName = artistNameTextField.text, let songTitle = songNameTextField.text else {return}
        SongController.creatSong(with: )
    }
    
}

extension  SongDetailViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        <#code#>
    }
}

extension SongDetailViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let playlist = self.playlist else { return 0 }
        
        return playlist.songs?.count ?? 0
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let playlist = playlist else { return UITableViewCell() }
        if let song = playlist.songs?[indexPath.row] as? Song {
            cell.textLabel?.text = song.artist
            cell.detailTextLabel?.text = song.title
        }
    }
    
    
}
