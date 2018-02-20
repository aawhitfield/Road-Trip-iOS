//
//  StateTableViewCell.swift
//  Road Trip iOS
//
//  Created by Aaron Whitfield on 2/19/18.
//  Copyright © 2018 Infinity Labs. All rights reserved.
//

import UIKit

class StateTableViewCell: UITableViewCell {

    @IBOutlet var stateImageView: UIImageView!
    @IBOutlet var stateLabel: UILabel!
    
    override func prepareForReuse() {
        self.accessoryType = .none;
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
