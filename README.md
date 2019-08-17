# File Operations Preview+

A library that helps developers to easily perform file-related operations. In iOS, 

>We write our files mainly into three directories Documents Directory, Temporary Directory, Cache Directory

## Requirements

-   iOS 10.0+ 
-   Xcode 10.1+
-   Swift 4.2

## Installation

### CocoaPods
[CocoaPods](https://cocoapods.org/)  is a dependency manager for Cocoa projects. For usage and installation instructions, visit their website. To integrate Alamofire into your Xcode project using CocoaPods, specify it in your  `Podfile`:

    pod 'FileOperations'
    

**DirectoryPath defines three directories which commonly used in our iOS application**

    1. document   
    2. temp   
    3. cache


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

Delete all contents of Directory
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
 try? FileOperations.removeDirectory(.document, with: "Image")
 ```
Remove directory with provided URL
```swift
 let documentDirectoryURL = FileOperations.getDocumentDirectoryURL().appendingPathComponent("test")
 try? FileOperations.removeDirectory(with directoryURL:documentDirectoryURL)
 ```
