//
//  FileOperations+Directories.swift
//  FileOperations
//
//  Created by Rinto Andrews on 28/07/19.
//  Copyright © 2019 Rinto Andrews. All rights reserved.
//

import Foundation

public extension FileOperations {
    /// Method returns Document Directory URL
    ///
    /// - Returns: document directory URL
    static func getDocumentDirectoryURL() -> URL {
       return FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    }
    /// Method returns Temporary Directory URL
    ///
    /// - Returns: temporary directory URL
    static func getTemporaryDirectoryURL() -> URL {
        return FileManager.default.temporaryDirectory
    }
    /// Method returns Cache Directory URL
    ///
    /// - Returns: cache directory URL
    static func getCacheDirectoryURL() -> URL {
        return FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask).first!
    }
    /// Remove all contents of the directory
    ///
    /// - Parameter directoryType: documents/dahce/temp directory
    static func clearDirectory(path: DirectoryPath) throws {
        var directoryPath: URL!
        switch path {
        case .document:
             directoryPath = getTemporaryDirectoryURL()
        case.cache:
             directoryPath = getCacheDirectoryURL()
        case .temp:
             directoryPath = getTemporaryDirectoryURL()
        }
        do {
            try removeAllFiles(in: directoryPath!)
        } catch {
            throw error
        }
    }
    /// Remove all contents of the directory
    ///
    /// - Parameter directoryURL: directory url
    /// - Throws: throws error if failed
    static private func removeAllFiles(in directoryURL: URL) throws {
         do {
            let contents = try FileManager.default.contentsOfDirectory(at: directoryURL,
                                                                       includingPropertiesForKeys: nil,
                                                                       options: [])
            for fileUrl in contents {
                try? FileManager.default.removeItem(at: fileUrl)
            }
         } catch {
            throw error
        }
    }

    /// Create directory in documents/dahce/temp directory
    ///
    /// - Parameters:
    ///   - path: documents/dahce/temp directory
    ///   - fileName: file name
    /// - Returns: url of the created directory
    /// - Throws: throws error if invalid file name
    static func createDirectory(in path: DirectoryPath, direcotryName: String) throws -> URL {

        let directoryURL: URL!

        switch path {
        case .document:
            directoryURL = getDirectoryPath(by: .document, directoryName: direcotryName)
        case .cache:
            directoryURL = getDirectoryPath(by: .cache, directoryName: direcotryName)
        case .temp:
            directoryURL = getDirectoryPath(by: .temp, directoryName: direcotryName)
        }
        /// Try to create directory with given URL
        do {
            try FileManager.default.createDirectory(atPath: directoryURL!.path,
                                                    withIntermediateDirectories: true,
                                                    attributes: nil)
        } catch {
            /// Throws error if invalid file name
            throw generateFileError(
                .invalidDirectoryeName,
                description: "Invalid file name.",
                failureReason: "Write failed",
                recoverySuggestion: "Provide valid file name"
            )
        }
        return directoryURL!
    }
    /// Create directory with given path
    ///
    /// - Parameter directoryURL: directory URL
    /// - Returns: url of the created directory
    /// - Throws: throws error if invalid file name
    static func createDirectory(with directoryURL: URL) throws -> URL {
        /// Try to create directory with given URL
        do {
            try FileManager.default.createDirectory(atPath: directoryURL.path,
                                                    withIntermediateDirectories: true,
                                                    attributes: nil)
        } catch {
            /// Throws error if invalid file name
            throw generateFileError(
                .invalidDirectoryURL,
                description: "Invalid File URL.",
                failureReason: "Write failed",
                recoverySuggestion: "Provide valid file URL"
            )
        }
        return directoryURL
    }
    /// Remove directory from documents/dahce/temp directory
    ///
    /// - Parameters:
    ///   - directoryType: documents/dahce/temp directory
    ///   - directoryName: directory name
    /// - Throws: throws error if delete failed
    static func removeDirectory(by type: DirectoryPath, with directoryName: String) throws {
        let directoryURL = getDirectoryPath(by: type, directoryName: directoryName)
        do {
            try FileManager.default.removeItem(at: directoryURL)
        } catch {
            throw error
        }
    }
    /// Remove directory form URL
    ///
    /// - Parameter path: path URL
    /// - Throws: throws error if delete failed
    static func removeDirectory(with directoryURL: URL) throws {
        do {
            try FileManager.default.removeItem(at: directoryURL)
        } catch {
            throw error
        }
    }
}
