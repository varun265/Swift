//
//  ViewController.swift
//  Extensions_App
//
//  Created by varun varma on 15/2/18.
//  Copyright © 2018 varun varma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var coloriseBtn: UIButton!
    @IBOutlet weak var wiggleBtn: UIButton!
    @IBOutlet weak var dimBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    
    
    @IBAction func colorizeBtnPressed(_ sender: Any) {
        coloriseBtn.colorize()
        coloriseBtn.wiggle()
         coloriseBtn.dim()
    }
    @IBAction func wiggleBtnPressed(_ sender: Any) {
        wiggleBtn.wiggle()
    }
    @IBAction func dimBtnPressed(_ sender: Any) {
        dimBtn.dim()
    }
    
    
}

