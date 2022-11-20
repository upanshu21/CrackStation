import Foundation

public class CrackStation: Decrypter {
    
    required public init() {
    }
    
    public func decrypt(shaHash: String) -> String? {
       return DictionaryService.hashDictionary[shaHash]
    }
    
}
