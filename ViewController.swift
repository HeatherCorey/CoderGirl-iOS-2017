//
//  ViewController.swift
//  About Me
//
//  Created by Heather Corey on 7/20/17.
//  Copyright © 2017 Heather Corey. All rights reserved.
//

enum Friends: Int {
    case alex
    case deanna
    
    func getPhoto() -> UIImage{
        switch self {
        case .alex:
            return #imageLiteral(resourceName: "IMG_0561.JPG")
        case .deanna:
            return #imageLiteral(resourceName: "IMG_6822.JPG")
        }
    }
    
    func getDescription() -> String {
        switch self {
        case .alex:
            return "This is my friend, Alex. We met in CS50xSTL, through LaunchCode. She currently works at NBC. We are both hoping to get an apprenticeship through LaunchCode! \n#BABBS4LIFE"
        case .deanna:
            return "This is my friend, DeAnna. We met in CS50xSTL, through LaunchCode. She works at Purina as a Data Scientist! \n#BABBS4LIFE"
        
        }
    }
}

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstName: UILabel!
    
    @IBOutlet weak var lastName: UILabel!
    
    @IBOutlet weak var friendSelector: UISegmentedControl!
    
    @IBAction func aboutMeTapped(_ sender: Any) {
        performSegue(withIdentifier: "aboutMe", sender: nil)
    }
    
    @IBAction func myFriendsTapped(_ sender: Any) {
        performSegue(withIdentifier: "friendsIdentifier", sender: nil)
    }
    
    
    var firstNameData: String = "Heather"
    
    var lastNameData: String = "Corey"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstName.text = firstNameData
        lastName.text = lastNameData
    }
   
    @IBOutlet var frontPageViewer: UIView!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationViewController = segue.destination as? FriendsViewController {
            destinationViewController.friend = Friends(rawValue: friendSelector.selectedSegmentIndex)
        }
    }
}

