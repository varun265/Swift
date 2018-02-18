//
//  UIButtonExt.swift
//  Extensions_App
//
//  Created by varun varma on 15/2/18.
//  Copyright © 2018 varun varma. All rights reserved.
//

import UIKit

extension UIButton{
    func wiggle(){
        let wiggleAnim = CABasicAnimation(keyPath: "position")
        wiggleAnim.duration = 0.05
        wiggleAnim.repeatCount = 5
        wiggleAnim.autoreverses = true
        wiggleAnim.fromValue = CGPoint(x: self.center.x - 4.0, y: self.center.y)
        wiggleAnim.toValue = CGPoint(x: self.center.x + 4.0, y: self.center.y)
        layer.add(wiggleAnim, forKey: "position")
    }
    
    
    func dim(){
        UIView.animate(withDuration: 0.15, animations: {
            self.alpha = 0.75
        }) { (finish) in
            UIView.animate(withDuration: 0.15, animations: {
                self.alpha = 1.0
            })
        }
    }
    
    func colorize(){
        let randomArray = generateRandomNumber(quantity: 3)
        let randomColor = UIColor(red: randomArray[0]/255, green: randomArray[1]/255, blue: randomArray[2]/255, alpha: 1.0)
        
        UIView.animate(withDuration: 0.3){
            self.backgroundColor = randomColor
        }
    }
}
