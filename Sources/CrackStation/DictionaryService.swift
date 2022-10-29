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
        let string = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

        for char in string {
            dictionary[String(encryptUsingSha1(from: String(char)))] = String(char)
        }
        
        for i in string {
            for j in string {
                let elem = String(i).appending(String(j))
                dictionary[String(encryptUsingSha1(from: String(elem)))] = String(elem)
            }
        }
        return dictionary;
    }
    
}
