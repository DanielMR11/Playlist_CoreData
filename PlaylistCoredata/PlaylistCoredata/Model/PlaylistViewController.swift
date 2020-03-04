//
//  PlaylistViewController.swift
//  PlaylistCoredata
//
//  Created by Daniel Merchan Rico on 3/4/20.
//  Copyright © 2020 Trevor Walker. All rights reserved.
//

import UIKit

class PlaylistViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var playlistNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func adButtonTapped(_ sender: Any) {
        guard let playlistName = playlistNameTextField.text else {return}
        PlaylistController.sharedInstance.createPlaylist(with: playlistName)
        playlistNameTextField.text = ""
    }
    

    // MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }


}

extension PlaylistController: UITableViewDataSource {
    
        return PlaylistController.sharedInstance.playlists.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let playlist = PlaylistController.sharedInstance.playlists[indexPath.row]
        
        cell.textLabel?.text = playlist.name
        cell.detailTextLabel?.text =
    
    }
}
