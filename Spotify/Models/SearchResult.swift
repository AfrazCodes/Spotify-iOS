//
//  SearchResult.swift
//  Spotify
//
//  Created by Afraz Siddiqui on 2/19/21.
//

import Foundation

enum SearchResult {
    case artist(model: Artist)
    case album(model: Album)
    case track(model: AudioTrack)
    case playlist(model: Playlist)
}
