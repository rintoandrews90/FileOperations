//
//  FileOperations+Helpers.swift
//  FileOperations
//
//  Created by Rinto Andrews on 28/07/19.
//  Copyright © 2019 Rinto Andrews. All rights reserved.
//

import Foundation


public extension FileOperations {
    
    /// Create directory path   
    ///
    /// - Parameters:
    ///   - directoryType: documents/dahce/temp directory
    ///   - fileName: file name
    /// - Returns: directory url
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
