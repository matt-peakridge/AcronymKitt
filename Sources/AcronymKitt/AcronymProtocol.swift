import Foundation

public protocol AcronymProtocol {
    var id: UUID? { get set }
    var short: String { get set }
    var long: String { get set }
}
