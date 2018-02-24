//
//  ViewController.swift
//  Swoosh
//
//  Created by varun varma on 18/2/18.
//  Copyright © 2018 varun varma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var bgImg: UIImageView!
    
    @IBOutlet weak var swoosh: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // here we are trying to bring both images to center of view frame. so it works properly in iphone 8 and 8+
        
        swoosh.frame = CGRect(x: view.frame.size.width / 2 -  swoosh.frame.size.width/2, y: 50,  width: swoosh.frame.size.width, height: swoosh.frame.size.height)
        bgImg.frame = view.frame
        
    }

    


}

