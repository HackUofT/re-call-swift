import UIKit

var taskMgr: TaskManager = TaskManager()

struct task{
    var id = -1
    var name = "Un-Named"
    var time = "Un-timed"
    var reminder = "No Reminder"
}

class TaskManager: NSObject {

    var tasks = [task]()
    
    func addTask(id: Int, name: String, time: String, reminder: String)
        {
            tasks.append(task(id: id, name: name, time: time, reminder: reminder))
        println(tasks)
        }
    
    
}
