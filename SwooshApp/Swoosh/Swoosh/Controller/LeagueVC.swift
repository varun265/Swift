//
//  LeagueVC.swift
//  Swoosh
//
//  Created by varun varma on 25/2/18.
//  Copyright © 2018 varun varma. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    var player: Player!
    
    
    @IBOutlet weak var nextBtn: BorderButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
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
    
    @IBAction func onMenTap(_ sender: Any) {
        selectLeague(leagueType: "men")
    }
    @IBAction func onWomenTap(_ sender: Any) {
        selectLeague(leagueType: "women")
    }
    
    @IBAction func onCoEdTap(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
    
    func selectLeague(leagueType: String)
    {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC
        {
            skillVC.player = player   // player on RHS is current VC variable and on LHs is for skill VC
        }
    }
}
