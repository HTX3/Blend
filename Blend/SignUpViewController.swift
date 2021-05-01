//
//  SignUpViewController.swift
//  Blend
//
//  Created by Tyler Robinson on 4/29/21.
//

import UIKit
import Parse

class SignUpViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var signUpButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signUpButton.layer.cornerRadius = 5
        signUpButton.layer.borderWidth = 1
        passwordField.textContentType = .oneTimeCode

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onSignUp(_ sender: Any) {
        self.performSegue(withIdentifier: "finishSignUpSegue", sender: nil)
    }
    
    @IBAction func onCancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let moreInfoViewController = segue.destination as! MoreInfoViewController
        
        moreInfoViewController.username = usernameField.text
        moreInfoViewController.password = passwordField.text
    }
    

}
