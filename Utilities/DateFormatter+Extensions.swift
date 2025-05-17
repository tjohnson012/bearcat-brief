import Foundation

extension Date {
    func formattedDate() -> String {
        self.formatted(date: .abbreviated, time: .shortened)
    }

    func fullFormattedDate() -> String {
        self.formatted(date: .long, time: .shortened)
    }
}
