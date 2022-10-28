import XCTest
@testable import CrackStation

final class CrackStationTests: XCTestCase {
    
    func testGivenCrackApi_WhenHashIsGiven_thenGiveCorrectOutput() {
        
        let crackstation = CrackStation();
        let result = crackstation.decrypt(shaHash: "86f7e437faa5a7fce15d1ddcb9eaeaea377667b8")
        let resultTwo = crackstation.decrypt(shaHash: "395df8f7c51f007019cb30201c49e884b46b92fa")
        XCTAssertEqual(result, "a" );
        XCTAssertEqual(resultTwo, "z");
    }
    
    func testGivenCrackApi_WhenWrongHashIsGiven_thenGiveErrorOutput() {
        
        let crackstation = CrackStation();
        let result = crackstation.decrypt(shaHash: "ff")
        XCTAssertEqual(result, nil)
    }
    
    func testGivenCrackApi_WhenUpperCaseAlphabetHashIsGiven_ThenShouldDecrypt() throws {
        
        let crackstation = CrackStation();
        let result = crackstation.decrypt(shaHash: "6dcd4ce23d88e2ee9568ba546c007c63d9131c1b")
        let resultTwo = crackstation.decrypt(shaHash: "909f99a779adb66a76fc53ab56c7dd1caf35d0fd")
        XCTAssertEqual(result, "A")
        XCTAssertEqual(resultTwo, "Z")
    }
    
    func testGivenCrackApi_WhenNumericHashIsGiven_ThenShouldDecrypt() throws {
        let crackstation = CrackStation();
        let result = crackstation.decrypt(shaHash: "356a192b7913b04c54574d18c28d46e6395428ab");
        let resultTwo = crackstation.decrypt(shaHash: "0ade7c2cf97f75d009975f4d720d1fa6c19f4897");
        XCTAssertEqual(result, "1");
        XCTAssertEqual(resultTwo, "9");
    }
}
