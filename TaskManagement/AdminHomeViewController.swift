//
//  AdminHomeViewController.swift
//  TaskManagement
//
//  Created by Jhovanny A. Gonzalez on 9/29/18.
//  Copyright © 2018 Team1UHCosc4355. All rights reserved.
//

import UIKit

class AdminHomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    //Notes: https://www.youtube.com/watch?v=dw7kytoA3KU
    //Notes: https://www.youtube.com/watch?v=IX2WktK5OYI
    
    //definte table view
    @IBOutlet weak var viewTable: UITableView!
    @IBAction func btnAdd(_ sender: Any) {
        let actionsheet = UIAlertController(title: nil, message: "Make a Selection", preferredStyle: .actionSheet)
        actionsheet.addAction(UIAlertAction(title: "Add User", style: .default, handler: {_ in
            self.performSegue(withIdentifier: "segueAddUser", sender: self)
            }))
        
        actionsheet.addAction(UIAlertAction(title: "Add Task", style: .default, handler: {_ in
            self.performSegue(withIdentifier: "segueAddTask", sender: self)
        }))
        
        actionsheet.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
            actionsheet.dismiss(animated: true, completion: nil)
            self.present(actionsheet, animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        let nib = UINib(nibName: "CustomTableViewCell", bundle: nil)
        viewTable.register(nib, forCellReuseIdentifier: "customCell")
    }

    var numRows = 10
    var tempIndex = 0
    var tempTable = ["Employee Name Goes Here","Task Name Goes Here"]
    
    func    tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numRows;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! CustomTableViewCell
        cell.customInit(taskName: tempTable[tempIndex])
        if tempIndex == 0 {
            cell.accessoryType = UITableViewCellAccessoryType.none
        } else {
            cell.accessoryType = UITableViewCellAccessoryType.disclosureIndicator
        }
        return cell
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Segmented control action
    @IBAction func switchTableView(_ sender: UISegmentedControl) {
        tempIndex = sender.selectedSegmentIndex
        viewTable.reloadData()
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
