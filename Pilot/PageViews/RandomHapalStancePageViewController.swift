//
//  RandomHapalStancePageViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 3/18/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class RandomHapalStancePageViewController: GenericPageViewController {

    override func viewDidLoad() {
        
        self.orderedViewControllers =  {
            setImage(image: Constants.KAYO_PIC)
            if self.segueID == "Don't Trust" || self.segueID == Constants.BY_RANDOM_HAPAL_STANCE_NO_TRUST{
                return [self.newVC(viewController: "No Trust_1"),
                        self.newVC(viewController: "No Trust_1.5"),
                        self.newVC(viewController: "Hapal Stance 1"),
                        self.newVC(viewController: "Hapal Stance 2")]
            } else {
       
                
                return [self.newVC(viewController: "Trust_1"),
                        self.newVC(viewController: "Trust_1.5"),
                        self.newVC(viewController: "Hapal Stance 1"),
                        self.newVC(viewController: "Hapal Stance 2")
                        ]
            }
        }()
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        if self.segueID == "Don't Trust" || self.segueID == Constants.BY_RANDOM_HAPAL_STANCE_NO_TRUST {
            super.checkNewChapter(chapterName: Constants.BY_RANDOM_HAPAL_STANCE_NO_TRUST, order: 5)
            ChapterSelectViewController.chapterSelect.deleteById(id: Constants.BY_RANDOM_HAPAL_STANCE)
            
        }
        else {
            super.checkNewChapter(chapterName: Constants.BY_RANDOM_HAPAL_STANCE, order: 5)
            ChapterSelectViewController.chapterSelect.deleteById(id: Constants.BY_RANDOM_HAPAL_STANCE_NO_TRUST)}
        }

}
