//
//  ViewController.swift
//  TaskManagement
//
//  Created by Jhovanny A. Gonzalez on 9/29/18.
//  Copyright © 2018 Team1UHCosc4355. All rights reserved.
//
import UIKit
//added by edward
import Firebase

class ViewController: UIViewController {
    
    //added by Rachel
    @IBOutlet weak var txt_login_username: UITextField!
    @IBOutlet weak var txt_login_password: UITextField!
    
    
    
    //added by edward, need to add data to DB
    var ref : DatabaseReference!
    //added by edward, need to retrive data from DB
    var handel : DatabaseHandle!

    @IBAction func btnLogin(_ sender: Any) {
        performSegue(withIdentifier: "segueAdminToHome", sender: self)
    }
    
    @IBAction func btnSignUp(_ sender: Any) {
        performSegue(withIdentifier: "SegueToSignUp", sender: self)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

