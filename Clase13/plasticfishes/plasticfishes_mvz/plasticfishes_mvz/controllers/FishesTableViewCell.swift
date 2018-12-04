//
//  FishesTableViewCell.swift
//  plasticfishes_mvz
//
//  Created by Angel Sandoval on 21/09/18.
//  Copyright © 2018 Angel Sandoval. All rights reserved.
//

import UIKit

class FishesTableViewCell: UITableViewCell {

    @IBOutlet weak var fisheTitleLabel: UILabel!
    @IBOutlet weak var fishImageView: UIImageView!
    @IBOutlet weak var fishSubtitleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
