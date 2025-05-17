import Foundation
import UserNotifications

class NotificationManager {
    static let shared = NotificationManager()

    private init() {}

    func requestPermissions() {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { granted, _ in
            print("Notification permission granted: \(granted)")
        }
    }

    func scheduleGameReminder(for game: Game) {
        let content = UNMutableNotificationContent()
        content.title = "Bearcat Game Reminder"
        content.body = "UC vs. \(game.opponent) starts soon at \(game.location)."
        content.sound = .default

        let triggerDate = Calendar.current.date(byAdding: .minute, value: -30, to: game.date) ?? game.date
        let trigger = UNCalendarNotificationTrigger(dateMatching: Calendar.current.dateComponents([.year, .month, .day, .hour, .minute], from: triggerDate), repeats: false)

        let request = UNNotificationRequest(identifier: game.id.uuidString, content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request)
    }
}
