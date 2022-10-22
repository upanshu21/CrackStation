import XCTest
@testable import CrackStation

final class CrackStationTests: XCTestCase {
    
    func testExample() throws {
        
        let crackstation = CrackStation();
        let result = try crackstation.crack(password: "86f7e437faa5a7fce15d1ddcb9eaeaea377667b8")
        let resultTwo = try crackstation.crack(password: "395df8f7c51f007019cb30201c49e884b46b92fa")
        XCTAssertEqual(result, "a" );
        XCTAssertEqual(resultTwo, "z");
    }
    
    func testIfDoesNotExist() throws {
        
        let crackstation = CrackStation();
        let result = try crackstation.crack(password: "ff")
        XCTAssertEqual(result, "does not exit")
    }
    
    func testWithUpperCase() throws {
        
        let crackstation = CrackStation();
        let result = try crackstation.crack(password: "6dcd4ce23d88e2ee9568ba546c007c63d9131c1b")
        let resultTwo = try crackstation.crack(password: "909f99a779adb66a76fc53ab56c7dd1caf35d0fd")
        XCTAssertEqual(result, "A")
        XCTAssertEqual(resultTwo, "Z")
    }
    
    func testWithNumber() throws {
        let crackstation = CrackStation();
        let result = try crackstation.crack(password: "356a192b7913b04c54574d18c28d46e6395428ab");
        let resultTwo = try crackstation.crack(password: "0ade7c2cf97f75d009975f4d720d1fa6c19f4897");
        XCTAssertEqual(result, "1");
        XCTAssertEqual(resultTwo, "9");
    }
}
