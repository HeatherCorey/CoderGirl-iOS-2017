//
//  ShowsTableViewCell.swift
//  About Me
//
//  Created by Heather Corey on 8/13/17.
//  Copyright © 2017 Heather Corey. All rights reserved.
//

import UIKit

class ShowsTableViewCell: UITableViewCell {

    @IBOutlet weak var showsCell: UILabel!
    
    var show: String = "" {
        didSet {
            updateUI()
        }
    }
    
    func updateUI() {
        showsCell.text = show
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
