import UIKit

var tempMgr: TempManager = TempManager()

struct temp{
    var task
    
}

class TempManager: NSObject {
    
    var temps = [temp]()
    
    func addTask(id: Int, name: String, time: String, reminder: String)
    {
        tasks.append(task(id: id, name: name, time: time, reminder: reminder))
    }
    
}
