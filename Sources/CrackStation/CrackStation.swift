import Foundation

public class CrackStation {

    public init() {}
    
    public func crack(password: String) throws -> String {
        let lookUp = DictionaryService();
        let dictionary = try lookUp.createLookup();
        return String(dictionary[password] ?? "cannot crack input hash. The given hash does not exist in the database");
    }
    
}
