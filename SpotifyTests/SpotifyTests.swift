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

    func testFeaturedPlaylistCellViewModel() {
        let viewModel = FeaturedPlaylistCellViewModel(
            name: "Summer Vibes",
            artworkURL: nil,
            creatorName: "All American"
        )
        XCTAssertEqual(viewModel.name, "Summer Vibes")
        XCTAssertEqual(viewModel.creatorName, "All American")
        XCTAssertNil(viewModel.artworkURL)
    }

    func testMath() {
        XCTAssertEqual(7+2, 9)
        XCTAssertEqual(12 - 2, 10)
    }
}
