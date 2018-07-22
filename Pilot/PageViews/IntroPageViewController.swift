//
//  Chapter1PageViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 2/26/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class IntroPageViewController: GenericPageViewController {

    //The array of viewControllers. Keep adding to this as I continue to add more viewControllers
    override lazy var orderedViewControllers: [UIViewController] =
        {
        if(self.segueID == "Run Far Away" ) {
                setImage(image: Constants.LAWN_GNOME_PIC)
                return
                    [   self.newVC(viewController: "Arrow Image"),
                        self.newVC(viewController: "run away1.5"),
                        self.newVC(viewController: "run_as_fast_as_you_can_1")]
        } else if(self.segueID == "just go home") {
           

            enableHardModeEffect()
            setImage(image: Constants.LUNA_AND_TV)
            return [self.newVC(viewController: "Image"),
            self.newVC(viewController: "Turn Back (The End)")]
        }
        
        else {
            setImage(image: Constants.EMPTY_SIDEWALK_PIC)
            return [
                self.newVC(viewController: "Arrow Image"),
                self.newVC(viewController: "Intro_1")]
            }
        }()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool){
        if(self.segueID != "just go home") {
            super.viewDidAppear(animated)
            super.checkNewChapter(chapterName: Constants.INTRO, order: 0)
        }
    }

}
