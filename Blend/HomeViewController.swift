//
//  HomeViewController.swift
//  Blend
//
//  Created by Hayley Robinson on 4/30/21.
//

import UIKit
import Parse
import AlamofireImage

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    

    //Storyboard items to segue to different screens


    
    var matches = [PFObject]()
    var selectedMatch: PFObject!
    @IBOutlet var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func viewDidAppear(_ animated: Bool) {
        //find matches
        let user = PFUser.current()
        let email = user?.email
        let query = PFQuery(className: "Matches")
        query.includeKeys(["name", "age", "bio", "profilePhotos","matchedUserEmail"])
        query.whereKey("matchedUserEmail", equalTo: email!)
        query.limit = 20
        
        query.findObjectsInBackground(){(matches, error) in
            if matches != nil{
                self.matches = matches!
                self.tableView.reloadData()
            }
        }
    }
    // MARK: - Table view data source

    func numberOfSections(in tableView: UITableView) -> Int {
        return matches.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let match = matches[indexPath.section]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MatchCell") as! MatchCell
        
        cell.profileName.text = match["name"] as? String
        cell.age.text = match["age"] as? String
        let imageFile = match["profilePhoto"] as! PFFileObject
        let urlString = imageFile.url!
        let url = URL(string: urlString)!
        
        cell.profilePicture.af.setImage(withURL: url)
        

        // Configure the cell...

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
