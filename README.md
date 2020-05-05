![adfsdfenter image description here](https://raw.githubusercontent.com/rintoandrews90/FileOperations/master/folder.png)
# File Operations Preview 

[![Build Status](https://travis-ci.org/rinto-andrews/FileOperations.svg?branch=master)](https://travis-ci.org/rinto-andrews/FileOperations) [![codecov](https://codecov.io/gh/rinto-andrews/FileOperations/branch/master/graph/badge.svg)](https://codecov.io/gh/rinto-andrews/FileOperations) [![HitCount](http://hits.dwyl.io/rintoandrews90/https://githubcom/rintoandrews90/FileOperations.svg)](http://hits.dwyl.io/rintoandrews90/https://githubcom/rintoandrews90/FileOperations)

  

A library that helps developers to easily perform file-related operations. In iOS,


>_We write our files mainly into three directories Documents Directory, Temporary Directory, Cache Directory_

  

## Requirements

  

| File Operations Version | 0.0.2 |
|--|--|
| iOS Version | 10.0+ |
| Xcode | 10+ |
| Swift | 4.2 |

  

## Installation

  

### CocoaPods

[CocoaPods](https://cocoapods.org/)  is a dependency manager for Cocoa projects. For usage and installation instructions, visit their website. To integrate Alamofire into your Xcode project using CocoaPods, specify it in your  `Podfile`:

  

    pod 'FileOperations'

  





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


------------

## Bundle Related Methods

Readt text file from bundle

```swift
 let fileContent = try? FileOperations.getText(form: Bundle.main, fileName: "sample")

```
 



