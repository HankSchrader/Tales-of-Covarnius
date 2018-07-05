//
//  CreditsViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 4/8/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit
import Darwin
import Foundation

class CreditsViewController: UIViewController {
    var tapRecognizer: UITapGestureRecognizer!
    @IBOutlet weak var developedBy: UILabel!
    @IBOutlet weak var writtenBy: UILabel!
    @IBOutlet weak var illustrationsBy: UILabel!
    @IBOutlet weak var site: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        developedBy.alpha = 0
        writtenBy.alpha = 0
        illustrationsBy.alpha = 0
        site.alpha = 0
        self.view.tintColor = UIColor.clear
        self.tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(gestureRecognizer))
        
      
     
    }
    
    
    @objc func gestureRecognizer(sender: Any?) {
        ChapterSelectViewController.chapterSelect.deleteById(id: "Main Menu")
        self.performSegue(withIdentifier: "to menu", sender: sender)
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        animateWrittenBy()
      

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func animateWrittenBy()
    {
        UIView.animate(withDuration: 1.0, delay: 0.0, options:[], animations: {
            self.writtenBy.alpha = 1
            self.site.alpha = 1
        }, completion: { finished in
            if finished {
                self.animateDevelopedBy()
            }
        })
    }
    
    func animateDevelopedBy()
    {
        UIView.animate(withDuration: 1.0, delay: 0.0, options: [], animations: {
            self.developedBy.alpha = 1
        }, completion: { finished in
            if finished {
                self.animateIllustrationsdBy()
            }
        })
    }
    
    func animateIllustrationsdBy()
    {
        UIView.animate(withDuration: 1.0, delay: 0.0, options: [], animations: {
            self.illustrationsBy.alpha = 1
        },  completion: { finished in
            if finished {
                self.view.addGestureRecognizer(self.tapRecognizer)
               
            }
        })
    }
    
    func animateSite() {
        UIView.animate(withDuration: 1.0, delay: 0.0, options: [], animations: {
            self.site.alpha = 1
        },  completion: nil)
    }
    
    

}
