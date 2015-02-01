import UIKit

var partialTaskMgr: PartialTaskManager = PartialTaskManager()

struct partialTask{
    var id = -1
    var name = "Un-Named"
    var time = "Un-timed"
}

class PartialTaskManager: NSObject {
    
    var partialTasks = [partialTask]()
    
    func addPartialTask(id: Int, name: String, time: String)
    {
        partialTasks.append(partialTask(id: id, name: name, time: time))
    }
}
