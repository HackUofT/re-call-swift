//
//  DeletedTaskManager.swift
//  My Task List
//
//  Created by Aishi Jiang on 2014-10-28.
//  Copyright (c) 2014 Aishi Jiang. All rights reserved.
//

import UIKit

var clickMgr: ClickManager = ClickManager()

struct click{
    var row = 5000

}

class ClickManager: NSObject {
    var clicks = click()
    
    func addClick(clickIndexPath: NSIndexPath){
        clicks.row = clickIndexPath.row
        
        if(clickMgr.clicks.row != 5000){
            println(clickMgr.clicks.row)
        }
        else{
        }
    }
}
