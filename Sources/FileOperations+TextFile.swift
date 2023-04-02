//
//  FileOperations+TextFile.swift
//  FileOperations
//
//  Created by Rinto Andrews on 16/08/19.
//  Copyright © 2019 Rinto Andrews. All rights reserved.
//

import Foundation

extension FileOperations {

    /// Create text file in Documents || Cache || Temporary directory with given content
    ///
    /// - Parameters:
    ///   - directoryType: Documents || Cache || Temporary
    ///   - fileName: File name
    ///   - content: Content of the file
    /// - Returns: Path of the file created
    /// - Throws: Error if file creation failed
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
                failureReason: "File creation failed",
                recoverySuggestion: "Provide valid file name/contents"
            )
        }
        return filePath
    }

    /// Create text file with URL
    ///
    /// - Parameters:
    ///   - fileURL: File url
    ///   - content: Content
    /// - Returns: File path
    /// - Throws: Error if file creation failed
    static func  createTextFile(with fileURL: URL,
                                content: String) throws -> URL {
        do {
            try content.write(to: fileURL, atomically: false, encoding: .utf8)
        } catch {
            throw generateFileError(
                .invalidDirectoryeName,
                description: "Invalid file name/contents",
                failureReason: "File creation failed",
                recoverySuggestion: "Provide valid file name/contents"
            )
        }
        return fileURL
    }

    /// Delete file from  Documents || Cache || Temporary
    /// - Parameters:
    ///   - fileNameWithExt: File name with extension
    ///   - directory:  Documents || Cache || Temporary
    /// - Returns: True if file deleted
    /// - Throws: Error if file deletion failed
    static func deleteFile(with fileNameWithExt: String,
                           in directory: DirectoryPath) throws -> Bool {

        var isFileDeleted: Bool = false
        do {
            let filePath = FileOperations.getDirectoryPath(by: directory).appendingPathComponent(fileNameWithExt)
            try FileManager.default.removeItem(at: filePath)
            isFileDeleted = true
        } catch {
            isFileDeleted = false
            throw generateFileError(
                .invalidDirectoryeName,
                description: "Invalid file name/contents",
                failureReason: "File deletion failed",
                recoverySuggestion: "Provide valid file name/contents"
            )
        }
        return isFileDeleted
    }
}
