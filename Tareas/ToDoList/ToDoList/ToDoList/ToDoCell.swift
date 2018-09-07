//
//  ToDoCell.swift
//  ToDoList
//
//  Created by Angel Sandoval on 06/09/18.
//  Copyright © 2018 Angel Sandoval. All rights reserved.
//

import UIKit

@objc protocol ToDoCellDelegate: class {
    func checkmarkTapped(sender: ToDoCell)
}


class ToDoCell: UITableViewCell {
    var delegate: ToDoCellDelegate?

    
    @IBOutlet weak var isCompleteButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    

    
   /* override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    } */    
    @IBAction func completeButtontapped() {
        delegate?.checkmarkTapped(sender: self)
    }
    
    
}
