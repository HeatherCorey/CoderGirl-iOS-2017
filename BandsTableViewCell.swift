//
//  BandsTableViewCell.swift
//  About Me
//
//  Created by Heather Corey on 8/13/17.
//  Copyright © 2017 Heather Corey. All rights reserved.
//

import UIKit

class BandsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var bandsCell: UILabel!

    var band: String = "" {
        didSet {
            updateUI()
        }
    }
    
    func updateUI() {
        bandsCell.text = band
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
