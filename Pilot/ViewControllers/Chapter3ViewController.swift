//
//  Chapter3ViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 3/17/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class Chapter3ViewController: Chapter2ViewController {
    
    @IBOutlet weak var whatstheplan: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.whatstheplan?.setContentOffset(CGPoint.zero, animated: false)

        // Do any additional setup after loading the view.
    }

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
        if segue.destination is Chapter4PageViewController
        {
            let vc = segue.destination as? Chapter4PageViewController
            vc?.segueID = segue.identifier!
        }
    }

}
