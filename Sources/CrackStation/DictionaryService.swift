import Foundation
import CryptoKit

public class DictionaryService {
    
    public func encryptUsingSha1(from input: String) -> String {
        let inputData = Data(input.utf8)
        let output = Insecure.SHA1.hash(data: inputData)
        return output.description
    }
    
    public func createLookup() -> [String : String] {
        
        var dictionary = [String: String]()
        for char in "abcdefghijklmnopqrstuvwxyz" {
            dictionary[String(encryptUsingSha1(from: String(char)).suffix(40))] = String(char)
        }
        for char in "abcdefghijklmnopqrstuvwxyz" {
            dictionary[String(encryptUsingSha1(from: String(char).uppercased()).suffix(40))] = String(char).uppercased()
        }
        
        for char in "0123456789"  {
            dictionary[String(encryptUsingSha1(from: String(char).uppercased()).suffix(40))] = String(char).uppercased()
        }
        return dictionary;
    }
    
}
