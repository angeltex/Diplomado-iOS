//
//  LabTunesTests.swift
//  LabTunesTests
//
//  Created by Angel Sandoval on 09/11/18.
//  Copyright © 2018 Angel Sandoval. All rights reserved.
//

import XCTest
@testable import LabTunes

class LabTunesTests: XCTestCase {

    override func setUp() {
        let session = Session.sharedInstance
            session.token = nil
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testCorrectLogin() {
            XCTAssertTrue(User.login(userName: "iOSLab", password: "Aqui"))
    }
    func testWrongLogin() {
        XCTAssertFalse(User.login(userName: "Angel", password: "Aqui"))
    }
    func testSaveSession(){
        let session = Session.sharedInstance
        let _ = User.login(userName: "iOSLab", password: "223")
        XCTAssertNotNil(session.token)
    }

    func testFailSaveSession(){
        let session = Session.sharedInstance
        let _ = User.login(userName: "Angel", password: "223")
        XCTAssertNil(session.token)
    }
    
    func testExpectToken(){
        let _ = User.login(userName: "iOSLab", password: "223")
        let session = Session.sharedInstance
        XCTAssertEqual(session.token!, "1234567890","Token Should Match")
    }
    func testFailExpectToken(){
        let _ = User.login(userName: "iOSLab", password: "223")
        let session = Session.sharedInstance
        XCTAssertNotEqual(session.token!, "123456790","Token is Equals")
    }

    func testThrowsError() {
        XCTAssertThrowsError(try User.fetchSongs())
    }
    
    func testfetchSongs() {
        var resultSongs: [Song] = []
        let promise = expectation(description: "Songs Downloaded")
        Music.fetchSongs { (songs) in
            resultSongs = songs
            promise.fulfill()
            }
        waitForExpectations(timeout: 5, handler: nil)
        XCTAssertNotEqual(resultSongs.count, 0)
    }
}
