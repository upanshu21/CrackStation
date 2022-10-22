import Foundation

public class CrackStation {

    public func crack(password: String) throws -> String {
        let lookUp = DictionaryService();
        let dictionary = try lookUp.createLookup();
        return String(dictionary[password] ?? "does not exit");
    }
    
}
