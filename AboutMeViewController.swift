//
//  AboutMeViewController.swift
//  About Me
//
//  Created by Heather Corey on 7/26/17.
//  Copyright © 2017 Heather Corey. All rights reserved.
//

import UIKit


class AboutMeViewController: UIViewController {
    
    
    @IBOutlet weak var aboutMeText: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()

        aboutMeText.text = "Favorite video games:                                                   Mass Effect, Fallout, Skyrim, Minecraft\n\nFavorite Bands:                                                                         Queens of the Stone Age, Nine Inch Nails, Eagles of Death Metal\n\nFavorite Movies: Terminator 2, Jurassic Park, Jay and Silent Bob Strike Back\n\nFavorite Shows:\nNew Girl, Arrested Development, The Office"
        
    }
}
