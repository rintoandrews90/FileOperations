# File Operations

A library that helps developers to easily perform file-related operations. In iOS, 

>We write our files mainly into three directories Documents Directory, Temporary Directory, Cache Directory

**DirectoryType defines these three types of directories**

    public enum DirectoryType {
    case document
    case temp
    case cache
    }

Method to get URL of Document Directory
```swift
FileOperations.getDocumentDirectoryURL()
 ```
       
Method to get URL of Temporary Directory
```swift
FileOperations.getTemporaryDirectoryURL()
 ```

Method to get URL of Cache Directory
```swift
FileOperations.getCacheDirectoryURL()
 ```

Method to delete all contents of Directory
```swift
FileOperations.clear(with directoryType:DirectoryType)
 ```

Method to create Directory
```swift
FileOperations.createDirectory(with directoryType: DirectoryType,direcotryName: String)
 ```

       
