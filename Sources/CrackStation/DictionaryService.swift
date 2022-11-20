import Foundation
import CryptoKit

public class DictionaryService {
    
    static var hashDictionary : [String:String] = loadDictionaryFromDisk()
    
    static func loadDictionaryFromDisk() -> [String : String] {
        guard let path = Bundle.module.url(forResource: "data", withExtension: "json") else { return [:] }
        do{
            let data = try Data(contentsOf: path)
            let jsonResult = try JSONSerialization.jsonObject(with: data)
            return jsonResult as? Dictionary<String, String> ?? [:]
        } catch {
            return [:]
        }
    }
    
}
