//
//  MoreInfoViewController.swift
//  Blend
//
//  Created by Tyler Robinson on 5/1/21.
//

import UIKit
import Parse

class MoreInfoViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
   
    
    
    
    var email: String!
    var username: String!
    var password: String!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var schoolField: UITextField!
    @IBOutlet weak var bioField: UITextField!
    @IBOutlet weak var completeSignUpButton: UIButton!
    @IBOutlet weak var genderPicker: UIPickerView!
    @IBOutlet weak var preferencePicker: UIPickerView!
    
    var genderOptions = [String]()
    var preferenceOptions = [String]()
    
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        completeSignUpButton.layer.cornerRadius = 5
        completeSignUpButton.layer.borderWidth = 1
        
        genderOptions = ["Man", "Woman", "Non-Binary"]
        preferenceOptions = ["Man", "Woman", "Men & Women", "All"]
        // Connect data:
       
        
       
        //doesn't work
        //pickerData = query.value(forKey: "Name") as! [String]
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onCompleteSignUp(_ sender: Any) {
        let user = PFUser()
        user.email = email
        user.username = username
        user.password = password
        
        
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView.tag == 1{
            return genderOptions.count
        }else{
            return preferenceOptions.count
        }
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        if pickerView.tag == 1 {
            return "\(genderOptions[row])"
        } else {
            return "\(preferenceOptions[row])"
        }
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
