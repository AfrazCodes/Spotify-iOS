//
//  SpotifyTests.swift
//  SpotifyTests
//
//  Created by Afraz Siddiqui on 9/2/21.
//

@testable import Spotify
import XCTest

class SpotifyTests: XCTestCase {
    func testNewReleasesCellViewModel() {
        let viewModel = NewReleasesCellViewModel(
            name: "Album Title",
            artworkURL: nil,
            numberOfTracks: 12,
            artistName: "Drake"
        )
        XCTAssertNotNil(viewModel)
        XCTAssertEqual(viewModel.name, "Album Title")
        XCTAssertNil(viewModel.artworkURL)
        XCTAssertEqual(viewModel.numberOfTracks, 12)
        XCTAssertEqual(viewModel.artistName, "Drake")
    }
}
