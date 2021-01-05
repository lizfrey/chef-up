//
//  MealTableViewCell.swift
//  Chef Up!
//
//  Created by Elizabeth on 14/4/20.
//  Copyright © 2020 Elizabeth Frey. All rights reserved.
//

import UIKit

class MealTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var veganLabel: UILabel!
    @IBOutlet weak var vegLabel: UILabel!
    @IBOutlet weak var foodImage: UIImageView!
    @IBOutlet weak var timeLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
