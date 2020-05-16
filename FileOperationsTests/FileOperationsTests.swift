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

    override func setUp() {

    }

    override func tearDown() {

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
