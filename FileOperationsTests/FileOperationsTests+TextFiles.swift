//
//  FileOperationsTests+TextFiles.swift
//  FileOperationsTests
//
//  Created by Rinto Andrews on 17/08/19.
//  Copyright © 2019 Rinto Andrews. All rights reserved.
//

import Foundation
@testable import FileOperations

extension FileOperationsTests {

    func testCreateTextFile() {
        do {
            let filePath =  try FileOperations.createTextFile(in: .document, fileName: "About", content: "Sample Text")
            print(filePath)
            assert(true, "File creation success")
        } catch {
            assert(false, "File creation failed")
        }
    }

    func testCreateFileFromUrl() {
        let path = FileOperations.getDirectoryPath(by: .document).appendingPathComponent("AboutMe")
        do {
            let filePath =  try FileOperations.createTextFile(with: path, content: "Sample Text")
            print(filePath)
            assert(true, "File creation success")
        } catch {
            assert(false, "File creation failed")
        }
    }

    func testdeleteFile() {
        do {
            let isDeleted = try FileOperations.deleteFile(with: "About", in: .document)
            print(isDeleted)
            assert(true, "File creation success")
        } catch {
            assert(false, "File creation failed")
        }
    }
}
