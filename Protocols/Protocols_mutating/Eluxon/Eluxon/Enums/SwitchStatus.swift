//
//  SwitchStatus.swift
//  Eluxon
//
//  Created by varun varma on 17/2/18.
//  Copyright © 2018 varun varma. All rights reserved.
//

import UIKit

enum SwithcStatus: toggleLabel{
    
    case on, off
    
    mutating func toggle() {
        switch self {
        case .off:
            self = .on
        case .on:
            self = .off
        
        }
    }
}
