import SwiftUI

struct GameDetailView: View {
    let game: Game

    var body: some View {
        VStack(spacing: 20) {
            Text("\(game.sport): UC vs. \(game.opponent)")
                .font(.title)
                .bold()

            Text("Location: \(game.location)")
            Text("Date: \(game.date.fullFormattedDate())")

            if let score = game.score {
                Text("Current Score: \(score)")
                    .font(.title2)
                    .foregroundColor(.red)
            } else {
                Text("Game has not started yet")
                    .foregroundColor(.gray)
            }

            Button(action: {
                NotificationManager.shared.requestPermissions()
                NotificationManager.shared.scheduleGameReminder(for: game)
            }) {
                Text("Add Game Reminder")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }

            Spacer()
        }
        .padding()
        .navigationTitle("Game Details")
    }
}
