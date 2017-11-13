//
//  AttractionTableViewCell.swift
//  3DTouchViews
//
//  Created by Jacob Burke on 11/12/17.
//  Copyright © 2017 Jacob Burke. All rights reserved.
//

import UIKit

class AttractionTableViewCell: UITableViewCell {


    @IBOutlet weak var attractionImage: UIImageView!
    @IBOutlet weak var attractionLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
