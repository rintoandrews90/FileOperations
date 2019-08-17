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
        try? FileOperations.createTextFile(in: .document, fileName: "About", content: "I am rinto andrews")
    }
}
