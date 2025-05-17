import Foundation

class GameViewModel: ObservableObject {
    @Published var games: [Game] = []

    init() {
        loadMockData()
    }

    func loadMockData() {
        games = [
            Game(id: UUID(), sport: "Football", opponent: "Miami (OH)", date: Date(), location: "Nippert Stadium", isHome: true, isLive: true, score: "21 - 17"),
            Game(id: UUID(), sport: "Basketball", opponent: "Xavier", date: Date().addingTimeInterval(86400), location: "Fifth Third Arena", isHome: true, isLive: false, score: nil),
            Game(id: UUID(), sport: "Soccer", opponent: "Louisville", date: Date().addingTimeInterval(172800), location: "UC Soccer Complex", isHome: false, isLive: false, score: nil)
        ]
    }
}
