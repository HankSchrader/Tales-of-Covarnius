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
            
                return [self.newVC(viewController: "run_as_fast_as_you_can_1")]
        } else {
            setImage(image: Constants.EMPTY_SIDEWALK_PIC)
            return [
                self.newVC(viewController: "Sidewalk Image"),
                self.newVC(viewController: "Intro_1")]
            }
        }()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        super.checkNewChapter(chapterName: Constants.INTRO, order: 0)
    }
}
