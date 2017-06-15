//
//  AddnewuserViewController.swift
//  My Service
//
//  Created by Student06 on 6/15/2560 BE.
//  Copyright © 2560 SNRU. All rights reserved.
//

import UIKit

class AddnewuserViewController: UIViewController {
    
    //Implicit
    var nameString: String? = nil
    var userString: String? = nil
    var passwordString: String? = nil
    
    
   
    @IBOutlet weak var txtName: UITextField!
    
    @IBOutlet weak var txtuser: UITextField!
  
    @IBOutlet weak var txtpass: UITextField!
    
    
    @IBAction func saveButton(_ sender: Any) {
        //Get Value From TextField
        nameString = txtName.text
        userString = txtuser.text
        passwordString = txtpass.text
        
        let intName = nameString?.characters.count
        let intUser = userString?.characters.count
        let intPassword = passwordString?.characters.count
        
        if (intName == 0) || (intUser == 0) || (intPassword == 0) {
        
        //Have Space
            print("Have Space")
        
        }else{
        print("No Space")
        
        }
    
    
    }//saveButton
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("This is NewUser")
        

        // Do any additional setup after loading the view.
    }//Main Method

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    }
