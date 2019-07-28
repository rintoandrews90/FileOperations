//
//  FileOperations.swift
//  FileOperations
//
//  Created by Rinto Andrews on 28/07/19.
//  Copyright © 2019 Rinto Andrews. All rights reserved.
//

import Foundation

public class FileOperations {
    
    fileprivate init() { }
    
    /// DirectoryType define type of directory in application sandbox
    ///
    /// - document: document Directory
    /// - temp: temp Directory
    /// - cache: cache Directory
    public enum DirectoryType {
        case document
        case temp
        case cache
    }

}
