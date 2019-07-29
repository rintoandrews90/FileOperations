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
    static func getTemporaryDirectoryURL() -> URL{
        return FileManager.default.temporaryDirectory
    }
    
    /// Method returns Cache Directory URL
    ///
    /// - Returns: cache directory URL
    static func getCacheDirectoryURL() -> URL{
        return FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask).first!
    }
    
    /// Remove all contents of the directory
    ///
    /// - Parameter directoryType: documents/dahce/temp directory
    static func clear(with directoryType:DirectoryType) throws {
        switch directoryType {
        case .document:
            let path = getTemporaryDirectoryURL()
            break
        case.cache:
            let path = getCacheDirectoryURL()
            break
        case .temp:
            let path = getTemporaryDirectoryURL()
        }
    }
    
//    static private func removeAllFiles(in directoryURL:URL) {
//        var error:Error?
//        
//        let fileManager = FileManager.default
//        var directoryURL = try FileManager.default.contentsOfDirectory(atPath: directoryURL)
//        
//        
//        if directoryContents != nil {
//            for path in directoryContents {
//                let fullPath = dirPath.stringByAppendingPathComponent(path as! String)
//                if fileManager.removeItemAtPath(fullPath, error: error) == false {
//                    println("Could not delete file: \(error)")
//                }
//            }
//        } else {
//            println("Could not retrieve directory: \(error)")
//        }
//    }
    
    
    
    /// Create directory in documents/dahce/temp directory
    ///
    /// - Parameters:
    ///   - directoryType: documents/dahce/temp directory
    ///   - fileName: file name
    /// - Returns: url of the created directory
    /// - Throws: throws error if invalid file name
    static func createDirectory(with directoryType: DirectoryType,fileName: String) throws -> URL {
       
        let directoryURL:URL?
        
        switch directoryType {
        case .document:
            directoryURL = createDirectoryPath(with: .document, fileName: fileName)
            break
        case .cache:
            directoryURL = createDirectoryPath(with: .cache, fileName: fileName)
            break
        case .temp:
            directoryURL = createDirectoryPath(with: .temp, fileName: fileName)
            break
        }
        /// Try to create directory with given URL
        do {
            try FileManager.default.createDirectory(atPath: directoryURL!.path, withIntermediateDirectories: true, attributes: nil)
        }
        catch {
            /// Throws error if invalid file name
            throw generateFileError(
                .invalidFileName,
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
    static func createDirectory(with directoryURL:URL) throws -> URL {
        /// Try to create directory with given URL
        do {
            try FileManager.default.createDirectory(atPath: directoryURL.path, withIntermediateDirectories: true, attributes: nil)
        }
        catch {
            /// Throws error if invalid file name
            throw generateFileError(
                .invalidFileURL,
                description: "Invalid File URL.",
                failureReason: "Write failed",
                recoverySuggestion: "Provide valid file URL"
            )
        }
        return directoryURL
    }
    
    static func removeDirectory(in Directory:DirectoryType, with fileName:String) {
        
    }
    
    static func removeDirectory(in path:URL) {
        
    }
    
}
