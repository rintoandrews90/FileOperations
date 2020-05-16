//
//  FileOperationsTests.swift
//  FileOperationsTests
//
//  Created by Rinto Andrews on 28/07/19.
//  Copyright © 2019 Rinto Andrews. All rights reserved.
//

import XCTest
@testable import FileOperations

class FileOperationsTests: XCTestCase {

    // XCode runs Unit test in Alphabetical order by default
    // Enable code coverage -> Schemas -> Test -> Options -> Enable Code Coverage

    override func setUp() {
        // Will be executed before each testcase
    }

    override func tearDown() {
        // Will be executed after each testcase
    }

    override class func setUp() {
        super.setUp()
        // This will execute only once for TextCase class(this class)
    }

    override class func tearDown() {
        super.tearDown()
        // This will execute only once for TextCase class(this class)
    }

    func testPerformanceExample() {
        self.measure {
        }
    }

    func testGetDocumentsDirectory() {
        let documentsDirectory: URL? = FileOperations.getDocumentDirectoryURL()
        XCTAssertNotNil(documentsDirectory, "Document URL is Present")
    }

    func testGetTempDirectory() {
        let documentsDirectory: URL? = FileOperations.getTemporaryDirectoryURL()
        XCTAssertNotNil(documentsDirectory, "Temporary URL is Present")
    }

    func testGetCacheDirectory() {
        let documentsDirectory: URL? = FileOperations.getCacheDirectoryURL()
         XCTAssertNotNil(documentsDirectory, "Cache URL is Present")
    }

    func testCreateDirectoryWithRUL() {
        let documentDirectoryURL = FileOperations.getDocumentDirectoryURL().appendingPathComponent("test")
        let path: URL? = try? FileOperations.createDirectory(with: documentDirectoryURL)
        XCTAssertNotNil(path, "Directory Created")
    }
}
