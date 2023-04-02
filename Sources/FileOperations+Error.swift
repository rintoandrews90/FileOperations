//
//  FileOperations+Error.swift
//  FileOperations
//
//  Created by Rinto Andrews on 28/07/19.
//  Copyright © 2019 Rinto Andrews. All rights reserved.
//

import Foundation

extension FileOperations {
    //Error Codes used the library
    public enum ErrorCode: Int {
        case invalidDirectoryeName  = 0
        case invalidDirectoryURL    = 1
    }
    public static let errorDomain = "FileError"
    /// Create error
    ///
    /// - Parameters:
    ///   - errorCode: error code
    ///   - description: description
    ///   - failureReason: failure reason
    ///   - recoverySuggestion: recovery suggestion
    /// - Returns: error
    static func generateFileError(_ errorCode: ErrorCode,
                                  description: String?,
                                  failureReason: String?,
                                  recoverySuggestion: String?) -> Error {
        let errorInfo: [String: Any] = [NSLocalizedDescriptionKey: description ?? "",
                                        NSLocalizedRecoverySuggestionErrorKey: recoverySuggestion ?? "",
                                        NSLocalizedFailureReasonErrorKey: failureReason ?? ""]
        return NSError(domain: errorDomain, code: errorCode.rawValue, userInfo: errorInfo) as Error
    }
}
