//
//  BorderButton.swift
//  Swoosh
//
//  Created by varun varma on 18/2/18.
//  Copyright © 2018 varun varma. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }

}
