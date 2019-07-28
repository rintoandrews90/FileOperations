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
    /// - Returns: URL
    static func getDocumentDirectoryURL() -> URL {
       return FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    }
    
    /// Method returns Temporary Directory URL
    ///
    /// - Returns: URL
    static func getTemporaryDirectoryURL() -> URL{
        return FileManager.default.temporaryDirectory
    }
    
    /// Method returns Cache Directory URL
    ///
    /// - Returns: URL
    static func getCacheDirectoryURL() -> URL{
        return FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask).first!
    }
    
    /// Create directory in documents/dahce/temp directory
    ///
    /// - Parameters:
    ///   - directoryType: documents/dahce/temp directory
    ///   - fileName: file name
    /// - Returns: URL of the created directory
    /// - Throws: Throws error if invalid file name
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
                recoverySuggestion: "Provide valid file names"
            )
        }
        return directoryURL!
    }
    
    static func createDirectory(in path:URL) {
        
    }
    
    static func removeDirectory(in Directory:DirectoryType, with fileName:String) {
        
    }
    
    static func removeDirectory(in path:URL) {
        
    }
    
}
