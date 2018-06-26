//
//  AtTheRanchDecisionPointViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 3/18/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class AtTheRanchDecisionPointViewController: Chapter3ViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var atTheRanchTextBox: UITextView!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction override func goToMainQuestAction(_ sender: Any) {
        dissectBrains.addTarget(self, action: #selector(self.goToMainQuest(_:segue:)), for: UIControlEvents.touchUpInside)
    }
    
    @IBAction override func goToMainQuest(_ sender: UIButton, segue: UIStoryboardSegue) {
        self.segueID = segue.identifier!
        performSegue(withIdentifier: self.segueID, sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is BackAtTheRanchPageViewController
        {

            let vc = segue.destination as? BackAtTheRanchPageViewController
            vc?.segueID = segue.identifier!
        }
    }
}
