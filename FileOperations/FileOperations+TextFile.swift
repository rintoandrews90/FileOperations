//
//  FileOperations+TextFile.swift
//  FileOperations
//
//  Created by Rinto Andrews on 16/08/19.
//  Copyright © 2019 Rinto Andrews. All rights reserved.
//

import Foundation

extension FileOperations {

    /// Create text file in documents/dahce/temp directory with given content
    ///
    /// - Parameters:
    ///   - directoryType: document/dahce/temp directory
    ///   - fileName: file name
    ///   - content: content of the file
    /// - Returns: path of the file
    /// - Throws: error if file creation failed
    static func createTextFile(in directoryType: DirectoryPath,
                               fileName: String,
                               content: String) throws -> URL {
        var filePath = getDirectoryPath(by: directoryType)
        filePath = filePath.appendingPathComponent(fileName)
        do {
            try content.write(to: filePath, atomically: false, encoding: .utf8)
        } catch {
            throw generateFileError(
                .invalidDirectoryeName,
                description: "Invalid file name/contents",
                failureReason: "Write failed",
                recoverySuggestion: "Provide valid file name/contents"
            )
        }
        return filePath
    }

    /// Create text file with URL
    ///
    /// - Parameters:
    ///   - fileURL: file url
    ///   - content: content
    /// - Returns: file path
    /// - Throws: error if file creation failed
    static func  createTextFile(with fileURL: URL,
                                content: String) throws -> URL {
        do {
            try content.write(to: fileURL, atomically: false, encoding: .utf8)
        } catch {
            throw generateFileError(
                .invalidDirectoryeName,
                description: "Invalid file name/contents",
                failureReason: "Write failed",
                recoverySuggestion: "Provide valid file name/contents"
            )
        }
        return fileURL
    }

}
