//
//  Chapter2ViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 3/16/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class Chapter2ViewController: ChapterViewController {
    var previousRID = ""
    var segueID = ""
    override func viewDidLoad() {
        super.viewDidLoad()
     
        
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var dissectBrains: UIButton!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func goToMainQuestAction(_ sender: Any) {
       dissectBrains.addTarget(self, action: #selector(self.goToMainQuest(_:segue:)), for: UIControlEvents.touchUpInside)
    }
    
    @IBAction func goToMainQuest(_ sender: UIButton, segue: UIStoryboardSegue) {
        self.segueID = segue.identifier!
        performSegue(withIdentifier: "Dissect", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is Chapter3PageViewController
        {
            let vc = segue.destination as? Chapter3PageViewController
            vc?.segueID = segue.identifier
        }
    }
    

}
