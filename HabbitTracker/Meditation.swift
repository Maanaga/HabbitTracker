import Foundation

struct Meditation: Codable, Identifiable, Hashable {
    var id = UUID()
    let step: String
    let title: String
    let description: String

}

