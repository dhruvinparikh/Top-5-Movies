//
//  TableViewCell.swift
//  Top 5 Movies
//
//  Created by Parikh Dhruvin S. on 4/11/18.
//  Copyright © 2018 Parikh Dhruvin S. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var imageImg: UIImageView!
    @IBOutlet weak var iimageView: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var releaseYear: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
