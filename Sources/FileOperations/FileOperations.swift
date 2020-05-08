
public class FileOperations {

    fileprivate init() { }

    /// DirectoryPath define type of directory in application sandbox
    ///
    /// - document: document Directory
    /// - temp: temp Directory
    /// - cache: cache Directory
    public enum DirectoryPath {
        case document
        case temp
        case cache
    }

}
