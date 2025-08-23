import Foundation

struct Meditation: Codable, Identifiable, Hashable {
    let step: String
    let title: String
    let description: String
    
    var id: UUID { UUID() }

}

