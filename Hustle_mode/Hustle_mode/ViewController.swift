//
//  ViewController.swift
//  Hustle_mode
//
//  Created by varun varma on 10/2/18.
//  Copyright © 2018 varun varma. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var darkBlueBG: UIImageView!
    @IBOutlet weak var cloudHolderView: UIView!
    @IBOutlet weak var rocketImage: UIImageView!
    @IBOutlet weak var holderMode: UILabel!
    @IBOutlet weak var onLabel: UILabel!
    @IBOutlet weak var powenBtn: UIButton!
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "hustle-on", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        }catch let error as NSError{
            print(error.description)
        }
    }

    @IBAction func powerButtonPressed(_ sender: Any) {
        
        darkBlueBG.isHidden = true;
        powenBtn.isHidden = true;
        cloudHolderView.isHidden = false
        player.play()
        UIView.animate(withDuration: 2.3, animations: {
            self.rocketImage.frame = CGRect(x: 0, y: 20, width: 375, height: 128)
        }) { (finished) in
            self.holderMode.isHidden=false
            self.onLabel.isHidden = false
        }
        
        
    }
    

}

