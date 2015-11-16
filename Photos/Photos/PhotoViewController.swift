//
//  PhotoViewController.swift
//  Photos
//
//  Created by Monica Shih on 11/15/15.
//  Copyright © 2015 iOS DeCal. All rights reserved.
//

import Foundation
import UIKit

class PhotoViewController: UIViewController {


    @IBOutlet weak var usernameDisplay: UILabel!
    @IBOutlet weak var postedOnDisplay: UILabel!
    @IBOutlet weak var numLikesDisplay: UILabel!
    @IBOutlet weak var imageDisplay: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
    var photo: Photo!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameDisplay.text = "Username: " + photo.username
        numLikesDisplay.text = "Likes: " + String(photo.likes)
        postedOnDisplay.text = "Posted on: " + String(photo.date)
        let url = NSURL(string: photo!.url)
        if let pic = NSData(contentsOfURL: url!) {
            imageDisplay.image = UIImage(data: pic)
        }
    }
    
    
    @IBAction func toLike(sender: AnyObject) {
        likeButton.setTitle("❤️ Liked!", forState: UIControlState.Normal)
        numLikesDisplay.text = "Likes: " + String(photo.likes+1)
    }

}
