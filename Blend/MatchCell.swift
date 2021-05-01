//
//  MatchCell.swift
//  Blend
//
//  Created by Hayley Robinson on 4/30/21.
//

import UIKit

class MatchCell: UITableViewCell {

    @IBOutlet weak var matchPicture: UIImageView!
    @IBOutlet weak var matchNameLabel: UILabel!
    @IBOutlet weak var matchAgeLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
