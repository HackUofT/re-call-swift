import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var txtTask: UITextField!
    @IBOutlet var myDatePicker: UIDatePicker!

    override func viewDidLoad() {
        super.viewDidLoad()
        myDatePicker.datePickerMode = UIDatePickerMode.DateAndTime
        let currentDate = NSDate()  //5 -  get the current date
        myDatePicker.minimumDate = currentDate  //6- set the current date/time as a minimum
        myDatePicker.date = currentDate //7 - defaults to current time but shows how to use it.
        
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "bg.jpg")!)
        }

        // Do any additional setup after loading the view, typically from a nib.

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Events
    
    
    //IOS Touch Functions
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    //UITextField Delegate
    func textFieldShouldReturn(textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return true
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

    
    @IBAction func recallButton(sender: AnyObject) {
        partialTaskMgr.addPartialTask(partialTaskMgr.partialTasks.count, name: txtTask.text, time: pushDate(myDatePicker.date))
    }

}

