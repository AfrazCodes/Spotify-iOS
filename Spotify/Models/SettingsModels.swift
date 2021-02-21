//
//  SettingsModels.swift
//  Spotify
//
//  Created by Afraz Siddiqui on 2/15/21.
//

import Foundation

struct Section {
    let title: String
    let options: [Option]
}

struct Option {
    let title: String
    let handler: () -> Void
}
