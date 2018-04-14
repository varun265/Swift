//
//  ChannelVC.swift
//  SmackApp
//
//  Created by varun varma on 13/4/18.
//  Copyright © 2018 varun varma. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    // Outlets
    @IBOutlet weak var loginBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
        
    }

    
    @IBAction func loginBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
    }
    
   

}
