//
//  MoreInfoViewController.swift
//  Blend
//
//  Created by Tyler Robinson on 5/1/21.
//

import UIKit
import Parse

class MoreInfoViewController: UIViewController  {
    
    
    var email: String!
    var username: String!
    var password: String!
  
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var schoolField: UITextField!
    @IBOutlet weak var bioField: UITextField!
    
    
    
    var pickerData: [String] = [String]()
    var colleges = [PFObject]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Connect data:
       
        
       
        //doesn't work
        //pickerData = query.value(forKey: "Name") as! [String]
        
        // Do any additional setup after loading the view.
    }
    

    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
