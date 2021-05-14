//
//  FeedCell.swift
//  Blend
//
//  Created by Hayley Robinson on 5/8/21.
//

import UIKit

class FeedCell: UITableViewCell {

    @IBOutlet weak var age: UILabel!
    @IBOutlet weak var profilePicture: UIImageView!
    @IBOutlet weak var profileName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
