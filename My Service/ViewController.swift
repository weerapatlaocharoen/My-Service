//
//  ViewController.swift
//  My Service
//
//  Created by Student06 on 6/15/2560 BE.
//  Copyright © 2560 SNRU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
    super.viewDidLoad()
        
        //Process Connection Http
    let urlPHP = "http://androidthai.in.th"
        //Change String to url String
    let myURL = URL(string: urlPHP)
    
        let reguest = NSMutableURLRequest(url: myURL!)
        let task = URLSession.shared.dataTask(with: reguest as URLRequest){
            
            data, response, error in
            
            if error != nil {
            
            print("Error ==>\(error)")
            
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
        
        
        
    }//Main Method

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

