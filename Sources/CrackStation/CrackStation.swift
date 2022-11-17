import Foundation

public class CrackStation: Decrypter {
    
    let dictionary: [String:String]
    
    required public init() {
        dictionary = DictionaryService().createLookup()
    }
    
    public func decrypt(shaHash: String) -> String? {
       return dictionary[shaHash]
    }
    
}
