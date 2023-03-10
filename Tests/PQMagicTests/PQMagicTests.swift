import XCTest
@testable import PQMagic

final class PQMagicTests: XCTestCase {
    
    let magic = PQMagic()
    
    func testDiffLetters1() throws {
        XCTAssertEqual(magic.invoke(initial: "A", target: "P"), false)
    }
    
    func testDiffLetters2() throws {
        XCTAssertEqual(magic.invoke(initial: "P", target: "B"), false)
    }
    
    func testSmall1() throws {
        XCTAssertEqual(magic.invoke(initial: "P", target: "q"), false)
    }
    
    func testSmall2() throws {
        XCTAssertEqual(magic.invoke(initial: "p", target: "Q"), false)
    }
    
    func testMiss1() throws {
        XCTAssertEqual(magic.invoke(initial: "", target: "Q"), false)
    }
    
    func testMiss2() throws {
        XCTAssertEqual(magic.invoke(initial: "P", target: ""), false)
    }
    
    func testWrongLength1() throws {
        XCTAssertEqual(magic.invoke(initial: "PP", target: "Q"), false)
    }
    
    func testEqualLength() throws {
        XCTAssertEqual(magic.invoke(initial: "PP", target: "QQ"), false)
    }
    
    func testTrue1() throws {
        XCTAssertEqual(magic.invoke(initial: "PQQ", target: "PQQP"), true)
    }
    
    func testTrue2() throws {
        XCTAssertEqual(magic.invoke(initial: "PQQ", target: "QQPQPPPP"), true)
    }
    
    func testFalse1() throws {
        XCTAssertEqual(magic.invoke(initial: "P", target: "PQPQQQ"), false)
    }
}
