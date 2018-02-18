//
//  ColorPickerVC.swift
//  ColorMagicProtocols
//
//  Created by varun varma on 16/2/18.
//  Copyright © 2018 varun varma. All rights reserved.
//

import UIKit

class ColorPickerVC: UIViewController {
    var delegate: ColorTransfer? = nil
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func colorButtonClicked(sender: UIButton){
     print(sender.titleLabel?.text)
        delegate?.userDidChoose(color: sender.backgroundColor!, withName: sender.titleLabel!.text!)
        self.navigationController?.popViewController(animated: true)
    }

}
