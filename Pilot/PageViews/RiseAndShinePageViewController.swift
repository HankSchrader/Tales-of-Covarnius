//
//  RiseAndShinePageViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 3/22/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class RiseAndShinePageViewController: GenericPageViewController {
    
    lazy override var orderedViewControllers: [UIViewController] = {
     
        if(self.segueID == "Use Key") {
            setImage(image: Constants.SLEEPING_SINISTERIANS)
            return [self.newVC(viewController: "Image"),
                    
                    self.newVC(viewController: "yet another distraction_0"),
                    self.newVC(viewController: "yet another distraction"),
                    self.newVC(viewController: "yet another distraction 2"),
                    self.newVC(viewController: "yet another distraction 3"),
                    self.newVC(viewController: "rise and shine 4"),
                    self.newVC(viewController: "rise and shine 5"),
                    self.newVC(viewController: "rise and shine 6"),
                    self.newVC(viewController: "rise and shine 7")
                     ]
        } else if(self.segueID == "hyper sleep release chamber") {
              setImage(image: Constants.HYPERSLEEP_CONTROL_PANEL)
                return [self.newVC(viewController: "Image"),
                self.newVC(viewController: "hyper sleep 0")]
        }
        
        else if(self.segueID == "home sweet home") {
            setImage(image: Constants.LUNA_IN_SHIP_PIC)
            return [self.newVC(viewController: "Image"),
                    self.newVC(viewController: "rise and shine 8")]
        } else if(self.segueID == "celebrate") {
            setImage(image: Constants.CHRONO_STATUE_PIC)
            return [self.newVC(viewController: "Image"),
                self.newVC(viewController: "celebrate")]
        } else
        
        {
            setImage(image: Constants.SLEEPING_SINISTERIANS)
            return [ self.newVC(viewController: "Image"),
                    self.newVC(viewController: "rise and shine 1"),
                    self.newVC(viewController: "rise and shine 2"),
                    self.newVC(viewController: "rise and shine 3"),
                    self.newVC(viewController: "rise and shine 4"),
                    self.newVC(viewController: "rise and shine 5"),
                    self.newVC(viewController: "rise and shine 6"),
                    self.newVC(viewController: "rise and shine 7")]
        }
    }()
 
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        //They have made it to the view controller, but I don't want the chapter unlocked if it
        //was via the segue below
        if(self.segueID != "hyper sleep release chamber") {
            super.checkNewChapter(chapterName: Constants.RISE_AND_SHINE, order: 11)
            ChapterSelectViewController.chapterSelect.deleteById(id: Constants.RAID_ON_COVARNIUS)
        }
      
    }

}
