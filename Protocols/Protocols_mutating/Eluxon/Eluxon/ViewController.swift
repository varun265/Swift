//
//  ViewController.swift
//  Eluxon
//
//  Created by varun varma on 17/2/18.
//  Copyright © 2018 varun varma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var onOffLabel: UILabel!
    @IBOutlet weak var onOffBtn: UIButton!
    var switchStatus: SwithcStatus = .off
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func toggleBtnPressed(_ sender: Any) {
        switchStatus.toggle()
        if switchStatus == .off
        {
            onOffBtn.setImage(UIImage(named: "offBtn")!, for: .normal)
            view.backgroundColor = #colorLiteral(red: 0.3697453997, green: 0.3697453997, blue: 0.3697453997, alpha: 1)
            onOffLabel.text = " 👽 OFF  👽"
            onOffLabel.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        else
        {
            onOffBtn.setImage(UIImage(named: "onBtn")!, for: .normal)
            view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            onOffLabel.text = " 👽 ON  👽"
            onOffLabel.textColor = #colorLiteral(red: 0.3697453997, green: 0.3697453997, blue: 0.3697453997, alpha: 1)
        }
    }
    


}

