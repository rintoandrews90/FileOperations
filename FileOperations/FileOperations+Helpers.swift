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
    static func getDirectoryPath(by directoryPath: DirectoryPath, directoryName: String) -> URL {
        switch directoryPath {
        case .document:
            return getDocumentDirectoryURL().appendingPathComponent(directoryName)
        case .cache:
            return getCacheDirectoryURL().appendingPathComponent(directoryName)
        case .temp:
            return getTemporaryDirectoryURL().appendingPathComponent(directoryName)
        }
    }
    /// Method to get commonly used directories based on type
    ///
    /// - Parameters:
    ///   - directoryType: documents/dahce/temp directory
    /// - Returns: directory url
    static func getDirectoryPath(by directoryPath: DirectoryPath) -> URL {
        switch directoryPath {
        case .document:
            return getDocumentDirectoryURL()
        case .cache:
            return getCacheDirectoryURL()
        case .temp:
            return getTemporaryDirectoryURL()
        }
    }
    /// Convert path URL to string
    ///
    /// - Parameter url: url
    /// - Returns: string
    static func convertURLtoString(url: URL) -> String {
       return url.absoluteString
    }
    /// Convert string to URL
    ///
    /// - Parameter string: string
    /// - Returns: URL
    static func convertStringtoURL(string: String) -> URL {
        return URL(string: string)!
    }

    static func convertFileURLtoString(url: URL) {
    }

    static func convertStringtoFileURL(string: String) {
    }
}
