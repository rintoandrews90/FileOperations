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

    func testGetDocumentsDirectory() {
        let documentsDirectory: URL? = FileOperations.getDocumentDirectoryURL()
        if documentsDirectory != nil {
            XCTAssert(true, "Document URL is present")
            print(documentsDirectory as Any)
        } else {
            XCTFail("Error while retriving douments directory")
        }
    }

    func testGetTempDirectory() {
        let documentsDirectory: URL? = FileOperations.getTemporaryDirectoryURL()
        if documentsDirectory != nil {
            XCTAssert(true, "Document URL is present")
            print(documentsDirectory as Any)
        } else {
            XCTFail("Error while retriving temp directory")
        }
    }

    func testGetCacheDirectory() {
        let documentsDirectory: URL? = FileOperations.getCacheDirectoryURL()
        if documentsDirectory != nil {
            XCTAssert(true, "Document URL is present")
            print(documentsDirectory as Any)
        } else {
            XCTFail("Error while retriving cache directory")
        }
    }

    func testCreateDirectoryWithRUL() {
        let documentDirectoryURL = FileOperations.getDocumentDirectoryURL().appendingPathComponent("test")
        let path: URL? = try? FileOperations.createDirectory(with: documentDirectoryURL)
        if path != nil {
            XCTAssert(true, "Document URL is present")
            print(path as Any)
        } else {
            XCTFail("Error creating directory")
        }
    }

    func testPerformanceExample() {

        try? FileOperations.clearDirectory(path: .document)
        let path = try? FileOperations.createDirectory(in: .document, direcotryName: "Image")
        self.measure {
        }
    }

}
