import UIKit

class ThirdViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    
    @IBOutlet var tblTasks: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "bg.jpg")!)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Returning to view
    override func viewWillAppear(animated: Bool){
        tblTasks.reloadData();
    }

    //UITableViewDataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return reminderMgr.reminders.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "test")
        
        cell.detailTextLabel?.text = reminderMgr.reminders[indexPath.row].time
        
        return cell
    }
    
    //Events
    @IBAction func btnFinish_Click(sender: UIButton){
   //     taskMgr.addTask(taskMgr.tasks.count, name: txtTask.text, time: pushDate(myDatePicker.date), reminder1: "a", reminder2: "a", reminder3: "a")
        
        for index in 1...reminderMgr.reminders.count
        { reminderMgr.reminders.removeAtIndex(index-1)
        }
        
        self.tabBarController?.selectedIndex = 2
        
        
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
