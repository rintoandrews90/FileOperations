# File Operations (Beta Mode)

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
    

**DirectoryType defines these three types of directories**

    public enum DirectoryType {
    case document
    case temp
    case cache
    }

Method to get URL of Document Directory
```swift
let documentDirectoryURL = FileOperations.getDocumentDirectoryURL()
 ```
       
Method to get URL of Temporary Directory
```swift
let TemporaryDirectoryURL =  FileOperations.getTemporaryDirectoryURL()
 ```

Method to get URL of Cache Directory
```swift
let CacheDirectoryURL = FileOperations.getCacheDirectoryURL()
 ```

Method to delete all contents of Directory
```swift
FileOperations.clear(with directoryType:DirectoryType)
 ```

Method to create Directory
```swift
FileOperations.createDirectory(with directoryType: DirectoryType,direcotryName: String)
 ```

       
