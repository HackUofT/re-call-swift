import UIKit

class FourthViewController: UIViewController {
    
    @IBOutlet var yourDatePicker: UIDatePicker!

    override func viewDidLoad() {
        super.viewDidLoad()

        yourDatePicker.datePickerMode = UIDatePickerMode.DateAndTime
        let currentDate = NSDate()  //5 -  get the current date
        yourDatePicker.minimumDate = currentDate  //6- set the current date/time as a minimum
        yourDatePicker.date = currentDate //7 - defaults to current time but shows how to use it.
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "bg.jpg")!)

  
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pushDate(date:NSDate) -> String {
        let dateFormatter = NSDateFormatter()//3
        
        var theDateFormat = NSDateFormatterStyle.ShortStyle //5
        let theTimeFormat = NSDateFormatterStyle.ShortStyle//6
        
        dateFormatter.dateStyle = theDateFormat//8
        dateFormatter.timeStyle = theTimeFormat//9
        
        var strDate = dateFormatter.stringFromDate(date)//11
        
        return strDate
        
    }

    @IBAction func doneButton(sender: AnyObject) {
        taskMgr.addTask(taskMgr.tasks.count, name: partialTaskMgr.partialTasks[partialTaskMgr.partialTasks.count - 1].name, time: partialTaskMgr.partialTasks[partialTaskMgr.partialTasks.count - 1].time, reminder: pushDate(yourDatePicker.date))
        
        //post!!!!
        var swiftRequest = SwiftRequest()
        
        var data = [
            "title" : taskMgr.tasks[taskMgr.tasks.count-1].name,
            "audioFile" : "",
            "text" : "",
            "eventTime" : taskMgr.tasks[taskMgr.tasks.count-1].time,
            "eventDate" : "",
            "reminderTime" : taskMgr.tasks[taskMgr.tasks.count-1].reminder,
            "reminderDate" : ""
        ]
        
        swiftRequest.post("https://limitless--earth--4233-herokuapp-com-px8uwc9z8taa.runscope.net/", data: data, callback: {err, response, body in
            if( err == nil ) {
                println(body)
            }
        })
        
       // println(taskMgr.tasks[taskMgr.tasks.count-1].id)
       // println(taskMgr.tasks[taskMgr.tasks.count-1].name)
       // println(taskMgr.tasks[taskMgr.tasks.count-1].time)
       // println(taskMgr.tasks[taskMgr.tasks.count-1].reminder)
       
        
        reminderMgr.addReminder(pushDate(yourDatePicker.date))
    
      // println(reminderMgr.reminders[reminderMgr.reminders.count-1].time)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
