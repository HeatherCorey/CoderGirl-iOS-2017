//
//  GamesTableViewCell.swift
//  About Me
//
//  Created by Heather Corey on 8/12/17.
//  Copyright © 2017 Heather Corey. All rights reserved.
//

import UIKit

class GamesTableViewCell: UITableViewCell {

    @IBOutlet weak var gamesCell: UILabel!
    
    var game: String = "" {
        didSet {
            updateUI()
        }
    }
    
    func updateUI() {
        gamesCell.text = game
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
