# File Operations Preview 

[![Build Status](https://travis-ci.org/rintoandrews90/FileOperations.svg?branch=master)](https://travis-ci.org/rintoandrews90/FileOperations) [![Documentation Status](https://readthedocs.org/projects/ansicolortags/badge/?version=latest)](http://ansicolortags.readthedocs.io/?badge=latest) [![codecov](https://codecov.io/gh/rinto-andrews/FileOperations/branch/master/graph/badge.svg)](https://codecov.io/gh/rinto-andrews/FileOperations) [![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://GitHub.com/Naereen/StrapDown.js/graphs/commit-activity)

[![GitHub license](https://img.shields.io/github/license/Naereen/StrapDown.js.svg)](https://github.com/Naereen/StrapDown.js/blob/master/LICENSE)  [![GitHub contributors](https://img.shields.io/github/contributors/Naereen/StrapDown.js.svg)](https://github.com/rinto-andrews/FileOperations/graphs/contributors)

[![HitCount](http://hits.dwyl.io/rintoandrews90/https://githubcom/rintoandrews90/FileOperations.svg)](http://hits.dwyl.io/rintoandrews90/https://githubcom/rintoandrews90/FileOperations)

 ![](https://github.com/rintoandrews90/FileOperations/blob/master/baner.png?raw=true)

A library that helps developers to easily perform file-related operations. In iOS,


>_We write our files mainly into three directories Documents Directory, Temporary Directory, Cache Directory_

  

## Requirements

  

| File Operations Version | 0.0.15 |
|--|--|
| iOS Version | 10.0+ |
| Xcode | 10+ |
| Swift | 4.2 |

  

## Installation

  

### CocoaPods

[CocoaPods](https://cocoapods.org/)  is a dependency manager for Cocoa projects. For usage and installation instructions, visit their website. To integrate Alamofire into your Xcode project using CocoaPods, specify it in your  `Podfile`:

  

    pod 'FileOperations'

  




## Directory Types
****DirectoryPath defines three directories which commonly used in our iOS application****

1. Documents Directory

2. Temporary Directory

3.  Cache Directory

 
## URL Methods

Get Document Directory URL

```swift

let documentDirectoryURL = FileOperations.getDocumentDirectoryURL()

```

Get Temporary Directory URL

```swift

let temporaryDirectoryURL =  FileOperations.getTemporaryDirectoryURL()

```

  

Get Cache Directory URL

```swift

let cacheDirectoryURL = FileOperations.getCacheDirectoryURL()

```

## Directory Methods

  

Delete all contents of Directory Path

```swift

try? FileOperations.clearDirectory(path: .document)

```

  

Create directory in document/temp/cache directory with given file name. Method returns path of the directory created

```swift

let path = try? FileOperations.createDirectory(in: .document, direcotryName: "Image")


```

  

Create directory form given URL path. Method returns path of the directory created

```swift

let documentDirectoryURL = FileOperations.getDocumentDirectoryURL().appendingPathComponent("Images")

let path = try? FileOperations.createDirectory(with: documentDirectoryURL)

```

Remove directory from document/temp/cache directory with given file name

```swift

try? FileOperations.removeDirectory(by: .document, with: "Images")

```

Remove directory with provided URL

```swift

let documentDirectoryURL = FileOperations.getDocumentDirectoryURL().appendingPathComponent("test")

try? FileOperations.removeDirectory(with directoryURL:documentDirectoryURL)

```



## Bundle Related Methods

Readt text file from bundle

```swift
 let fileContent = try? FileOperations.getText(form: Bundle.main, fileName: "sample")

```

## Text File Operations

Create text file with file name and directory path

```swift
 let filePath =  try? FileOperations.createTextFile(in: .document, fileName: "About", content: "Sample Text")

```

Create text file form path

```swift
 let filePath =  try? FileOperations.createTextFile(with: path, content: "Sample Text")

```

Delete file with specified path

```swift
 let filePath =  try? FileOperations.createTextFile(with: path, content: "Sample Text")

```

 ###  Contributers
 
 ------------
 
[![](https://avatars3.githubusercontent.com/u/16162588?size=50)](https://avatars3.githubusercontent.com/u/16162588?size=50) [![](https://avatars1.githubusercontent.com/u/11071838?size=50)](https://github.com/remarkablemark)




