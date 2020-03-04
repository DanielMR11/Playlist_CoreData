//
//  SongController.swift
//  PlaylistCoredata
//
//  Created by Daniel Merchan Rico on 3/4/20.
//  Copyright © 2020 Trevor Walker. All rights reserved.
//

import Foundation

class SongController {
    
    //MARK: - CRUD
    
    func creatSong(with title: String, and artist: String, addTo playlist: Playlist) {
        Song(title: title, artist: artist, playlist: playlist)
        PlaylistController.sharedInstance.saveToPersistenceStore()
    }
    
    func deleteSong(song: Song) {
        CoreDataStack.context.delete(song)
        PlaylistController.sharedInstance.saveToPersistenceStore()
    }
    
}// End Of Class
