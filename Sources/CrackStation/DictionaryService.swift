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
    
    public func encryptUsingSha256(from: String) -> String {
        let dataToHash = Data(from.utf8)
        let prefix = "SHA256 digest:  "
        let shaHashDescription = String(SHA256.hash(data: dataToHash).description)
        let shaHash = String(shaHashDescription.dropFirst(prefix.count - 1))
        return shaHash
    }
    
    public func createLookup() -> [String : String] {
        
        var dictionary = [String: String]()
        let string = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!?"
        for firstChar in string {
            let singleCharacter = String(firstChar)
            dictionary[encryptUsingSha1(from: singleCharacter)] = singleCharacter
            dictionary[encryptUsingSha256(from: singleCharacter)] = singleCharacter
            for secondChar in string {
                let doubleCharacter = String(firstChar) + String(secondChar)
                dictionary[encryptUsingSha1(from: doubleCharacter)] = doubleCharacter
                dictionary[encryptUsingSha256(from: doubleCharacter)] = doubleCharacter
                for thirdChar in string {
                    let password = String(firstChar) + String(secondChar) + String(thirdChar)
                    dictionary[encryptUsingSha1(from: password)] = password
                    dictionary[encryptUsingSha256(from: password)] = password

                }
            }
        }
        return dictionary;
    }
    
}
