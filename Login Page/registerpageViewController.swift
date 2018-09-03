//
//  registerpageViewController.swift
//  Login Page
//
//  Created by Abdul Rehman on 6/8/18.
//  Copyright © 2018 Abdul Rehman. All rights reserved.
//

import UIKit

class registerpageViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var RepeaatPasswordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func registerbutton(_ sender: Any) {
        
        let userEmail = emailTextField.text!
        let password = passwordTextField.text!
        let repeatpassword = RepeaatPasswordTextField.text!
        
        if(userEmail.isEmpty || password.isEmpty || repeatpassword.isEmpty)
        {
            displayAlertmessage(userMessage: "All fields are required")
            return
        }
        if(password != repeatpassword)
        {
            displayAlertmessage(userMessage: "password do not match")
            return
            
        }
        //StoreData
        UserDefaults.standard.set(userEmail,forKey: "userEmail")
         UserDefaults.standard.set(password,forKey: "userPassword")
        UserDefaults.standard.synchronize()
        
        //DisplayAlertmessage
        let myAlert = UIAlertController(title:"Alert",message: "Registration is successful, Thank You!",preferredStyle:UIAlertControllerStyle.alert)

        let okAction = UIAlertAction(title: "OK",style:UIAlertActionStyle.default){ action in
            self.dismiss(animated: true, completion: nil)
            
            
        }

        myAlert.addAction(okAction)
        self.present(myAlert,animated: true, completion: nil)
        
        
    }
    
    func displayAlertmessage(userMessage: String)
    {
        let myAlert = UIAlertController(title:"Alert",message: userMessage,preferredStyle:UIAlertControllerStyle.alert)
        
        let okAction = UIAlertAction(title: "OK",style:UIAlertActionStyle.default,handler: nil)
        myAlert.addAction(okAction)
        
        self.present(myAlert,animated: true, completion: nil)
        
        
        
    }
    
   

}
