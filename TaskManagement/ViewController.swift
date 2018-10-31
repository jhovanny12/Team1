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
    
    var userDatabase: [String:String] = [
                                "rachel" : "password",
                                "edward": "password",
                                "jhovanny": "password",
                                "sai" : "password",
                                "joel" : "password",
                                "chuckNorris" : "freedom",
                                "testUser" : "password"]
    
    var adminDatabase = ["rachel", "edward", "jhovanny", "sai", "joel"]
    
    //added by edward, need to add data to DB
    var ref : DatabaseReference!
    //added by edward, need to retrive data from DB
    var handel : DatabaseHandle!

    @IBAction func btnLogin(_ sender: Any) {
        let user = txt_login_username.text
        let pass = txt_login_password.text
        
        if (userDatabase[user!]?.isEqual(pass))!
        {
            print("Successful login...Seguing now")
            performSegue(withIdentifier: "segueAdminToHome", sender: self)
        }
        else if (userDatabase[user!] == nil) {
            print("The username or password is incorrect. Please try again, or Sign Up")
        }
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

