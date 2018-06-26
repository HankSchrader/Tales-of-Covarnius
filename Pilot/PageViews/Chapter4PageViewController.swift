//
//  Chapter4PageViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 3/17/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class Chapter4PageViewController: GenericPageViewController {
    
    override func viewDidLoad() {
        
        self.orderedViewControllers =  {
       
            if self.segueID == "keep going" || self.segueID == "Earth's Greatest Scientist" {
                //MARK: Picture of King Zanarq.
     
                return [self.newVC(viewController: "chap4_1"),
                        self.newVC(viewController: "chap4_2"),
                        self.newVC(viewController: "chap4_3"),
                        self.newVC(viewController: "chap4_4")]
            } else if self.segueID == "You Didn't Help The Hapal" || segueID == "You Let The Hapal Down..." {
                setImage(image: Constants.KING_ZANARQ_PIC)
                return [self.newVC(viewController: "Let Hapal Down"),
                        self.newVC(viewController: "Let Hapal Down 2"),
                        self.newVC(viewController: "chap4_3"),
                        self.newVC(viewController: "chap4_4")]
            } else if self.segueID == "Help The Hapal" || self.segueID == "You Saved The Hapal!!" {
                
                setImage(image: Constants.BABY_HAPAL_PIC)
                return [self.newVC(viewController: "Hapal Rescue 1"),
                        self.newVC(viewController: "Hapal Rescue 2"),
                        self.newVC(viewController: "Hapal Rescue 3"),
                        self.newVC(viewController: "Hapal Rescue 4"),
                        self.newVC(viewController: "chap4_3"),
                        self.newVC(viewController: "chap4_4")]
            }
            else {
                setImage(image:Constants.CRASH_LAND_ON_KATONIA_PIC)
                return [self.newVC(viewController: "katonian_1"),
                        self.newVC(viewController: "katonian_1.5"),
                        self.newVC(viewController: "katonian_2"),
                        self.newVC(viewController: "katonian_2.5"),
                        self.newVC(viewController: "katonian_3")]
            }
        }()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        if self.segueID == "keep going" {
            super.checkNewChapter(chapterName: Constants.EARTHS_GREATEST_SCIENTIST,order: 4)
            ChapterSelectViewController.chapterSelect.deleteById(id: "You Saved The Hapal!!")
            ChapterSelectViewController.chapterSelect.deleteById(id: Constants.BY_RANDOM_HAPAL_STANCE)
            ChapterSelectViewController.chapterSelect.deleteById(id: Constants.BY_RANDOM_HAPAL_STANCE_NO_TRUST)
            ChapterSelectViewController.chapterSelect.deleteById(id: Constants.COWBOYS_OF_KATONIA)
            ChapterSelectViewController.chapterSelect.deleteById(id: "You Let The Hapal Down...")
        }
        else if self.segueID == "Help The Hapal" {
            super.checkNewChapter(chapterName: Constants.YOU_SAVED_THE_HAPAL, order: 3)
            ChapterSelectViewController.chapterSelect.deleteById(id: "You Let The Hapal Down...")
            ChapterSelectViewController.chapterSelect.deleteById(id: Constants.EARTHS_GREATEST_SCIENTIST)
        }
        else if self.segueID == "You Didn't Help The Hapal" {
            super.checkNewChapter(chapterName: Constants.YOU_LET_THE_HAPAL_DOWN, order: 3)
            ChapterSelectViewController.chapterSelect.deleteById(id: "You Saved The Hapal!!")
             ChapterSelectViewController.chapterSelect.deleteById(id: Constants.EARTHS_GREATEST_SCIENTIST)
        } else
        {
            if self.previousRID != "Chapter Select" {
            super.checkNewChapter(chapterName: Constants.COWBOYS_OF_KATONIA, order: 2)
            ChapterSelectViewController.chapterSelect.deleteById(id: Constants.EARTHS_GREATEST_SCIENTIST)
            }
        }
    }

}
