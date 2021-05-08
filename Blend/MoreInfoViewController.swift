//
//  MoreInfoViewController.swift
//  Blend
//
//  Created by Tyler Robinson on 5/1/21.
//

import UIKit
import Parse

class MoreInfoViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    var email: String!
    var username: String!
    var password: String!
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var ageField: UITextField!
    
    
    
    var pickerData: [String] = [String]()
    var colleges = [PFObject]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Connect data:
        self.picker.delegate = self
        self.picker.dataSource = self
        
        let query = PFQuery(className: "Usuniversitieslist_University")
        //doesn't work
        //pickerData = query.value(forKey: "Name") as! [String]
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
    
    // Number of columns of data
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // The number of rows of data
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    // The data to return fopr the row and component (column) that's being passed in
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
        
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
