//
//  FakeScientistArcPageViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 3/18/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class FakeScientistArcPageViewController: GenericPageViewController {

    
    override func viewDidLoad() {
        setImage(image: Constants.COVARNIAN_LAB_PIC)
        self.orderedViewControllers =  {
            if self.segueID == "I'm A Scientist" || self.segueID == "Fake It Til You Make It"{
                
                return [self.newVC(viewController: "I'm Not A Scientist 0.5"),
                    self.newVC(viewController: "I'm Not A Scientist")]
            } else if self.segueID == "Fake Scientist" {
                return [self.newVC(viewController: "The Jig Is Up"),
                        self.newVC(viewController: "The Jig Is Up 1.5") ]
            } else
            {
                return [self.newVC(viewController: "You Goofed 0.5"),
                    self.newVC(viewController: "You Goofed")]
            }
        }()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        super.checkNewChapter(chapterName: Constants.FAKE_IT_TIL_YOU_MAKE_IT, order: 7)
    }
}
