import Foundation


public protocol Decrypter {
    
    init()
    
    func decrypt(shahash: String) -> String?
    
}
