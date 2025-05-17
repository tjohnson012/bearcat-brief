import Foundation

struct Game: Identifiable {
    let id: UUID
    let sport: String
    let opponent: String
    let date: Date
    let location: String
    let isHome: Bool
    let isLive: Bool
    let score: String?
}
