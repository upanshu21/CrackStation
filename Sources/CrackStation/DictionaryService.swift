import Foundation
import CryptoKit

public class DictionaryService {
    
    public func encryptUsingSha1(from input: String) -> String {
        let inputData = Data(input.utf8)
        let output = Insecure.SHA1.hash(data: inputData).description
        let prefix = "SHA 1 digest: "
        let shaHash = String(output.dropFirst(prefix.count - 1))
        return shaHash
    }
    
    public func createLookup() -> [String : String] {
        
        var dictionary = [String: String]()
        let string = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!?"

        for char in string {
            let password = String(char)
            dictionary[encryptUsingSha1(from: password)] = password
        }
        
        for firstChar in string {
            for secondChar in string {
                let password = String(firstChar) + String(secondChar)
                dictionary[encryptUsingSha1(from: password)] = password
                
            }
        }
        
        return dictionary;
    }
    
}
