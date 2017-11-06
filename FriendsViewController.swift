//
//  FriendsViewController.swift
//  About Me
//
//  Created by Heather Corey on 7/29/17.
//  Copyright © 2017 Heather Corey. All rights reserved.
//

import UIKit

class FriendsViewController: UIViewController {
    
    @IBOutlet weak var friendsImage: UIImageView!
    
    @IBOutlet weak var friendsDescription: UITextView!
    
    var friend: Friends?

    override func viewDidLoad() {
        super.viewDidLoad()

        friendsImage.image = friend?.getPhoto()
        friendsDescription.text = friend?.getDescription()
    }
}
