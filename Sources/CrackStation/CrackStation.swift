import Foundation

public class CrackStation: Decrypter {
    
    private static let hashDictionary : [String:String] = loadDictionaryFromDisk()
    
    required public init() {
    }
    
    public func decrypt(shaHash: String) -> String? {
        return Self.hashDictionary[shaHash]
    }
    
    private static func loadDictionaryFromDisk() -> [String : String] {
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
