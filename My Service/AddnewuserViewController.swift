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
    
    
    @IBOutlet weak var AlertLabel: UILabel!
    
    
    
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
        AlertLabel.alpha = 1
        }else{
        print("No Space")
        AlertLabel.alpha = 0
            let strMyURL = "http://androidthai.in.th/snru/addUserJO.php?isAdd=true&Name=" + nameString! + "&User=" + userString! + "&password=" + passwordString! + ""
            print("strMyURL ==> \(strMyURL)")
            uploadValueToServer(strURL: strMyURL)
        }
    
    
    }//saveButton
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("This is NewUser")
        

        // Do any additional setup after loading the view.
    }//Main Method

    func uploadValueToServer(strURL: String) -> Void {
        
        //Process Connection Http
        let urlPHP = strURL
        //Change String to url String
        let myURL = URL(string: urlPHP)
        
        let reguest = NSMutableURLRequest(url: myURL!)
        let task = URLSession.shared.dataTask(with: reguest as URLRequest){
            
            data, response, error in
            
            if error != nil {
                
                print("Error")
                
            }
            else{
                
                if let unwrappedData = data {
                    
                    
                    let dataString = NSString(data: unwrappedData, encoding: String.Encoding.utf8.rawValue)
                    let strJSON = dataString as Any
                    print("strJSON ==> \(strJSON)")
                   
                }
                
                
            }//if1
            
            
        }
        task.resume()
        
        performSegue(withIdentifier: "BackHome", sender: self)
        
    }//uploadValue
    
    override  func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GoHome"{
            if let desintion = segue.destination as? ViewController {
                desintion.myString = (sender as? String)!
                
                
            }
        
        }else{
        
        
        }
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    }
