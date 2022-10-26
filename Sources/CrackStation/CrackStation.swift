import Foundation

public class CrackStation: Decrypter {
    
    required public init() {}
    
    public func decrypt(shahash: String) -> String? {
       let lookUp = DictionaryService();
       let dictionary = lookUp.createLookup();
       return dictionary[shahash] ;
    }
    
}
