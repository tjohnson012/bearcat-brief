import SwiftUI

struct GameListView: View {
    @StateObject private var viewModel = GameViewModel()

    var body: some View {
        List(viewModel.games) { game in
            NavigationLink(destination: GameDetailView(game: game)) {
                VStack(alignment: .leading) {
                    Text("\(game.sport): UC vs. \(game.opponent)")
                        .font(.headline)
                    Text(game.location)
                        .font(.subheadline)
                    Text(game.date.formattedDate())
                        .font(.caption)
                        .foregroundColor(.gray)
                    if game.isLive {
                        Text("LIVE - \(game.score ?? "")")
                            .foregroundColor(.red)
                            .bold()
                    }
                }
                .padding(.vertical, 4)
            }
        }
        .navigationTitle("Upcoming Games")
    }
}
