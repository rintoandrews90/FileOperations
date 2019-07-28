//
//  FileOperations+Helpers.swift
//  FileOperations
//
//  Created by Rinto Andrews on 28/07/19.
//  Copyright © 2019 Rinto Andrews. All rights reserved.
//

import Foundation


public extension FileOperations {

    static func createDirectoryPath(with directoryType: DirectoryType, fileName: String) -> URL{
        switch directoryType {
        case .document:
            return getDocumentDirectoryURL().appendingPathComponent(fileName)
        case .cache:
            return getCacheDirectoryURL().appendingPathComponent(fileName)
        case .temp:
            return getTemporaryDirectoryURL().appendingPathComponent(fileName)
        }
    }
}
