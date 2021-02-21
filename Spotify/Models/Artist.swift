//
//  Artist.swift
//  Spotify
//
//  Created by Afraz Siddiqui on 2/14/21.
//

import Foundation

struct Artist: Codable {
    let id: String
    let name: String
    let type: String
    let images: [APIImage]?
    let external_urls: [String: String]
}
