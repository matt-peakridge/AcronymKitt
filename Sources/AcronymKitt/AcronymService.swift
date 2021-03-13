import Foundation

public class AcronymService {
    
    public func someCrazyBusinessLogic(fromAcronyms acronyms: [AcronymProtocol]) -> [AcronymProtocol] {
        let filteredAcronyms = acronyms.filter({$0.short.prefix(1) == "B"})
        return filteredAcronyms
    }
}
