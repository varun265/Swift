//
//  LeagueVC.swift
//  Swoosh
//
//  Created by varun varma on 25/2/18.
//  Copyright © 2018 varun varma. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "SkillVCSegue", sender: self)
    }

    @IBAction func onBackTappep(_ sender: Any)
    {
        performSegue(withIdentifier: "unwindFromLeagueVC", sender:self)
    }
    
    

}
