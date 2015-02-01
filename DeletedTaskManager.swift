//
//  DeletedTaskManager.swift
//  My Task List
//
//  Created by Aishi Jiang on 2014-10-28.
//  Copyright (c) 2014 Aishi Jiang. All rights reserved.
//

import UIKit

var delTaskMgr: DeletedTaskManager = DeletedTaskManager()

struct delTask{
    var name = "Un-Named"
    var desc = "Un-Described"
}

class DeletedTaskManager: NSObject {
    var delTasks = [delTask]()
    
    func addTask(name: String, desc: String){
        delTasks.append(delTask(name: name, desc: desc))
    }
}
