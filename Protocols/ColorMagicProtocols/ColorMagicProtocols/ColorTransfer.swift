//
//  ColorTransfer.swift
//  ColorMagicProtocols
//
//  Created by varun varma on 16/2/18.
//  Copyright © 2018 varun varma. All rights reserved.
//

import Foundation
import UIKit

protocol ColorTransfer {
    func userDidChoose(color: UIColor, withName colorName: String)
}
