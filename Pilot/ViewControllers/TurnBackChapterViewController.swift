//
//  TurnBackChapterViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 3/16/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class TurnBackChapterViewController: ChapterViewController {
    var previousRID = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var TurnBack: UITextView!
    @IBOutlet weak var turnBackButton: UIButton!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func back_to_main_quest(_ sender: Any) {
        turnBackButton.addTarget(self, action: #selector(TurnBackChapterViewController.goToMainQuest(_:segue:)), for: UIControlEvents.touchUpInside)
    }
    
    @IBAction func goToMainQuest(_ sender: UIButton, segue: UIStoryboardSegue) {
        self.previousRID = self.restorationIdentifier!
        performSegue(withIdentifier: "go_to_main_quest", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is Chapter2PageViewController
        {
            let vc = segue.destination as? Chapter2PageViewController
            vc?.previousRID = self.restorationIdentifier!
        }
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
