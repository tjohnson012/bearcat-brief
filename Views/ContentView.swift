import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 16) {
                Text("Bearcat Brief")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.bearcatRed)

                Text("Your hub for University of Cincinnati sports.")
                    .multilineTextAlignment(.center)
                    .padding()

                NavigationLink(destination: GameListView()) {
                    Text("See Upcoming Games")
                        .padding()
                        .background(Color.bearcatBlack)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            .padding()
            .background(Color(.systemBackground))
        }
    }
}
