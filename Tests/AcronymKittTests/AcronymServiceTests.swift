import XCTest
@testable import AcronymKitt

final class AcronymServiceTests: XCTestCase {
    
    var sut: AcronymService!
    
    func testCrazyBusinessLogicWorks() {
       
        let afk = MockAcronym(short: "AFK", long: "Away From Keyboard")
        let brb = MockAcronym(short: "BRB", long: "Be Right Back")
        let cmm = MockAcronym(short: "CMM", long: "Call Me Maybe")
        let omw = MockAcronym(short: "OMW", long: "On My Way")
        sut = AcronymService()
        
        let results = sut.someCrazyBusinessLogic(fromAcronyms: [afk, brb, cmm,omw])
        
        XCTAssertEqual(results.count, 1)
        XCTAssertEqual(results.first?.short, brb.short)
    }

    static var allTests = [
        ("testCrazyBusinessLogicWorks", testCrazyBusinessLogicWorks),
    ]
}

class MockAcronym: AcronymProtocol {
    var id: UUID?
    var short: String
    var long: String

    init(id: UUID? = nil, short: String, long: String) {
        self.id = id
        self.short = short
        self.long = long
    }
}
