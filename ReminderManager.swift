import UIKit

var reminderMgr: ReminderManager = ReminderManager()

struct reminder{
    var time = "No Name"
}

class ReminderManager: NSObject {
    
    var reminders = [reminder]()
    
    func addReminder(time: String)
    {
        reminders.append(reminder(time: time))
    }
}
