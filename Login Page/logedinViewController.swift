//
//  logedinViewController.swift
//  Login Page
//
//  Created by Abdul Rehman on 6/8/18.
//  Copyright © 2018 Abdul Rehman. All rights reserved.
//

import UIKit

class logedinViewController: UIViewController {

    @IBOutlet weak var passwordtextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
    @IBAction func loginButton(_ sender: Any) {
        let userEmail = emailTextField.text
        let password = passwordtextField.text
        
        let useremailStored = UserDefaults.standard.string(forKey: "userEmail")
        
         let userPasswordStored = UserDefaults.standard.string(forKey: "userPassword")
        
        if(userEmail == useremailStored)
        {
            if(userPasswordStored == password)
            {
            //Log in is successful
                UserDefaults.standard.set(true,forKey: "isUserLogedIn")
                
                UserDefaults.standard.synchronize()
                self.dismiss(animated: true,completion: nil)
                
                
            }
        }
    
        
        
        
        
    }
    
}
