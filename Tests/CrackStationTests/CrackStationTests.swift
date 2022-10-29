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
        let resultTwo = crackstation.decrypt(shaHash: "101")
        XCTAssertEqual(result, nil)
        XCTAssertEqual(resultTwo, nil)
    }
    
    func testGivenCrackApi_WhenUpperCaseAlphabetHashIsGiven_ThenShouldDecrypt() {
        
        let crackstation = CrackStation();
        let result = crackstation.decrypt(shaHash: "6dcd4ce23d88e2ee9568ba546c007c63d9131c1b")
        let resultTwo = crackstation.decrypt(shaHash: "909f99a779adb66a76fc53ab56c7dd1caf35d0fd")
        XCTAssertEqual(result, "A")
        XCTAssertEqual(resultTwo, "Z")
    }
    
    func testGivenCrackApi_WhenNumericHashIsGiven_ThenShouldDecrypt() {
        let crackstation = CrackStation();
        let result = crackstation.decrypt(shaHash: "356a192b7913b04c54574d18c28d46e6395428ab");
        let resultTwo = crackstation.decrypt(shaHash: "0ade7c2cf97f75d009975f4d720d1fa6c19f4897");
        XCTAssertEqual(result, "1");
        XCTAssertEqual(resultTwo, "9");
    }
    
    func testGivenCrackApi_WhenDoubleNumericHashIsGiven_ThenShouldDecrypt() {
        let crackstation = CrackStation();
        let result = crackstation.decrypt(shaHash: "9a79be611e0267e1d943da0737c6c51be67865a0");
        let resultTwo = crackstation.decrypt(shaHash: "ddfe163345d338193ac2bdc183f8e9dcff904b43");
        XCTAssertEqual(result, "99");
        XCTAssertEqual(resultTwo, "01");
    }
    
    func testGivenCrackApi_WhenDoubleAlphabetHashIsGiven_ThenShouldDecrypt() {
        let crackstation = CrackStation();
        let result = crackstation.decrypt(shaHash: "c96dc4d9669196a9bb46f4be77216413f911dbd9");
        let resultTwo = crackstation.decrypt(shaHash: "6ee6a55ec6b36e37ae2c298343f1e8dd1756b13a");
        XCTAssertEqual(result, "aZ");
        XCTAssertEqual(resultTwo, "Kf");
    }
    
    func testGivenCrackApi_WhenDoubleLowerCaseAlphabetHashIsGiven_ThenShouldDecrypt() {
        let crackstation = CrackStation();
        let result = crackstation.decrypt(shaHash: "e0c9035898dd52fc65c41454cec9c4d2611bfb37");
        let resultTwo = crackstation.decrypt(shaHash: "00762ccfa703393e0daff813a6ecc19f7cd02421");
        XCTAssertEqual(result, "aa");
        XCTAssertEqual(resultTwo, "se");
    }
    
    func testGivenCrackApi_WhenDoubleUpperCaseAlphabetHashIsGiven_ThenShouldDecrypt() {
        let crackstation = CrackStation();
        let result = crackstation.decrypt(shaHash: "1460dc33fdc66db88bdcc5b32057457efeed3ce5");
        let resultTwo = crackstation.decrypt(shaHash: "62bd650a8380e4c0ba1db576801b7a1f4725de18");
        XCTAssertEqual(result, "LL");
        XCTAssertEqual(resultTwo, "FC");
    }
    
}
