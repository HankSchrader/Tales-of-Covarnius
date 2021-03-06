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
 
        self.orderedViewControllers =  {
            if self.segueID == "I'm A Scientist" || self.previousRID == Constants.FAKE_IT_TIL_YOU_MAKE_IT{
                setImage(image: Constants.COVARNIAN_LAB_PIC)
                return [self.newVC(viewController: "Image"),
                        self.newVC(viewController: "I'm Not A Scientist 0.5"),
                        self.newVC(viewController: "I'm Not A Scientist")]
            } else if(self.segueID == "yellow liquid") {
                enableHardModeEffect()
                setImage(image: Constants.FROG_PIC)
                return [self.newVC(viewController: "Image"),
                self.newVC(viewController: "yellow liquid")]
                
            } else if(self.segueID == "green liquid") {
                enableHardModeEffect()
                setImage(image: Constants.GREEN_FIZZ_THE_END_PIC)
                return [self.newVC(viewController: "Image"),
                self.newVC(viewController: "green liquid")]
            }
                
                else if self.segueID == "Fake Scientist" {
                
                setImage(image: Constants.COVARNIAN_LAB_PIC)
                return [self.newVC(viewController: "Image"),
                        self.newVC(viewController: "The Jig Is Up"),
                        self.newVC(viewController: "The Jig Is Up 1.5") ]
            } else
            {
                setImage(image: Constants.COVARNIAN_LAB_PIC)
                return [self.newVC(viewController: "You Goofed 0.5"),
                        self.newVC(viewController: "You Goofed")]
            }
        }()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        if(self.segueID != "green liquid" &&  self.segueID != "yellow liquid") {
            super.checkNewChapter(chapterName: Constants.FAKE_IT_TIL_YOU_MAKE_IT, order: 6)
        }
    }
}
