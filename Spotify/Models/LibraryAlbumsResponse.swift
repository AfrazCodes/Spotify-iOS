//
//  LibraryAlbumsResponse.swift
//  Spotify
//
//  Created by Afraz Siddiqui on 2/21/21.
//

import Foundation

struct LibraryAlbumsResponse: Codable {
    let items: [SavedAlbum]
}

struct SavedAlbum: Codable {
    let added_at: String
    let album: Album
}
