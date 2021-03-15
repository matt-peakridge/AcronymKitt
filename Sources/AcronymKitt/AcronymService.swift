import Foundation

public class AcronymService {
    
    public init() {
        
    }
    
    public func someCrazyBusinessLogic(fromAcronyms acronyms: [AcronymProtocol], forShortCodesWithPrefix prefix: String? = nil) -> [AcronymProtocol] {
        
        guard let prefix = prefix else { return acronyms }
        
        let filteredAcronyms = acronyms.filter({$0.short.prefix(1) == prefix})
        return filteredAcronyms
    }
}
