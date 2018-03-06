//
//  SkillVC.swift
//  Swoosh
//
//  Created by varun varma on 25/2/18.
//  Copyright © 2018 varun varma. All rights reserved.
//

import UIKit

class SkillVC: UIViewController {

    var player: Player!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("vavad"+player.desiredLeague)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onFinishClicked(_ sender: Any) {
        performSegue(withIdentifier: "ShowStartVCSegue", sender: self)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
