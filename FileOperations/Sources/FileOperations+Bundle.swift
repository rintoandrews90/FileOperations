//
//  FileOperations+Bundle.swift
//  FileOperations
//
//  Created by Rinto Andrews on 26/04/20.
//  Copyright © 2020 Rinto Andrews. All rights reserved.
//

import Foundation

public extension FileOperations {

    /// Get bundle path
    /// - Parameters:
    ///   - bundle: bundle
    ///   - fileName: file name
    ///   - fileEXt: file extension
    static func getFilePath(bundle: Bundle, fileName: String, fileExt: String) -> String? {
        return bundle.path(forResource: fileName, ofType: fileExt)
    }

    /// Get text file from the bundle
    /// - Parameters:
    ///   - bundle: budle
    ///   - fileName: file name
    static func getText(form bundle: Bundle, fileName: String) throws -> String? {

        var contentOfFile: String?
        if let bundleurl = getFilePath(bundle: bundle, fileName: fileName, fileExt: "txt") {
            do {
                contentOfFile = try String(contentsOfFile: bundleurl, encoding: String.Encoding.utf8)
            } catch {
                throw generateFileError(
                    .invalidDirectoryeName,
                    description: "Invalid file name/contents",
                    failureReason: "Invalid file",
                    recoverySuggestion: "Provide valid file name/contents"
                )
            }
            return contentOfFile
        }
        return contentOfFile
    }
}
