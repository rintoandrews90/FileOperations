//
//  FileOperationsTests+TextFiles.swift
//  FileOperationsTests
//
//  Created by Rinto Andrews on 17/08/19.
//  Copyright © 2019 Rinto Andrews. All rights reserved.
//

import Foundation
import XCTest
@testable import FileOperations

extension FileOperationsTests {

    func testGetTextFileContentsFromBundle() {
        let fileContent = try? FileOperations.getText(form: Bundle.main, fileName: "sample")
        XCTAssertNotNil(fileContent, "Text file read success")
    }

    func testCreateTextFile() {
        let filePath =  try? FileOperations.createTextFile(in: .document, fileName: "About", content: "Sample Text")
        // If the file created successfull, then deleate the file
        addTeardownBlock {
            let isDeleted = try? FileOperations.deleteFile(with: "About", in: .document)
        }
        XCTAssertNotNil(filePath, "Text file creation failed")

    }

    func testCreateFileFromUrl() {
        let path = FileOperations.getDirectoryPath(by: .document).appendingPathComponent("AboutMe")
        XCTAssertNotNil(path, "Text file creation failed")
    }

    func testdeleteFile() {
        let isDeleted = try? FileOperations.deleteFile(with: "About", in: .document)
         XCTAssertNotNil(isDeleted, "Text file deletion")
    }
}
