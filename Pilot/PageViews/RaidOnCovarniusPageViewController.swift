//
//  RaidOnCovarniusPageViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 3/21/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class RaidOnCovarniusPageViewController: GenericPageViewController {

    //The array of viewControllers. Keep adding to this as I continue to add more viewControllers
    override lazy var orderedViewControllers: [UIViewController] =
        
        {
            if (self.segueID == "Raid On Covarnius" || self.segueID == "broke out of prison") {
            
            setImage(image: Constants.KORGLE_ATTACKS_PIC)
            return [
                self.newVC(viewController: "fetch key"),
                self.newVC(viewController: "raid on covarnius 1"),
                    self.newVC(viewController: "raid on covarnius 2"),
                    self.newVC(viewController: "raid on covarnius 3"),
                    self.newVC(viewController: "raid on covarnius 3.5")] }
        else if self.segueID == "ice ray" {
                setImage(image: Constants.KORGLE_ATTACKS_PIC)
            return [self.newVC(viewController: "ice ray"),
                    self.newVC(viewController: "no peace 2"),
                    self.newVC(viewController: "raid on covarnius 1"),
                    self.newVC(viewController: "raid on covarnius 2"),
                    self.newVC(viewController: "raid on covarnius 3"),
                    self.newVC(viewController: "raid on covarnius 3.5")
                   ]
            
            }
            else if self.segueID == "stealth" {
                setImage(image: Constants.HYPER_GROTH_RAY_PIC)
                return [self.newVC(viewController: "raid on covarnius 4"),
                self.newVC(viewController: "raid on covarnius 5"),
                self.newVC(viewController: "raid on covarnius 6"),
                self.newVC(viewController: "raid on covarnius 7")
               ]
                
            }
            else if self.segueID == "murkblur" {
                setImage(image: Constants.GIANT_LUNA_PIC)
                return [self.newVC(viewController: "raid on covarnius 8"),
                self.newVC(viewController: "raid on covarnius 9"),
                self.newVC(viewController: "raid on covarnius 10"),
                self.newVC(viewController: "raid on covarnius 11"),
                self.newVC(viewController: "raid on covarnius 12")]
            } else if self.segueID == "Tell King Good News" {
             
                setImage(image: Constants.FINAL_PICTURE_PIC)
               return[ self.newVC(viewController: "tell king good news"),
                self.newVC(viewController: "raid on covarnius 13")]
            
            } else if self.segueID == "don't tell king" {
               
                setImage(image: Constants.FINAL_PICTURE_PIC)
                return[self.newVC(viewController: "don't tell king"),
                    self.newVC(viewController: "tell king good news"),
                        self.newVC(viewController: "raid on covarnius 13")]
            }
            
            else if self.segueID == "skip test" {
                setImage(image: Constants.GIANT_LUNA_PIC)
                
                return [self.newVC(viewController: "raid on covarnius 9"),
                self.newVC(viewController: "raid on covarnius 10"),
                self.newVC(viewController: "raid on covarnius 11"),
                self.newVC(viewController: "raid on covarnius 12")]
            }
                
            else if self.segueID == "ram ship" {
               return [self.newVC(viewController: "ram ship"),
                self.newVC(viewController: "ram ship 2"),
                self.newVC(viewController: "ram ship 2.5"),
                self.newVC(viewController: "raid on covarnius 1"),
                self.newVC(viewController: "raid on covarnius 2"),
                self.newVC(viewController: "raid on covarnius 3"),
                self.newVC(viewController: "raid on covarnius 3.5")
                ]
                
            }
        else if self.segueID == "broker peace"{
            return [self.newVC(viewController: "no peace 1"),
                    self.newVC(viewController: "no peace 2"),
                    self.newVC(viewController: "raid on covarnius 1"),
                    self.newVC(viewController: "raid on covarnius 2"),
                    self.newVC(viewController: "raid on covarnius 3"),
                    self.newVC(viewController: "raid on covarnius 3.5")]
        } else if self.segueID == "Second Best Ending" && ChapterSelectViewController.chapterSelect.isChapterThere(chapterName: Constants.YOU_SAVED_THE_HAPAL) {
            return [self.newVC(viewController: "Special Ending")]
        } else if self.segueID == "Second Best Ending" && ChapterSelectViewController.chapterSelect.isChapterThere(chapterName: Constants.YOU_SAVED_THE_HAPAL) == false {
            return [self.newVC(viewController: "No Special Ending")]
        }
  
        else {
                setImage(image: Constants.KORGLE_ATTACKS_PIC)
            return [
                    self.newVC(viewController: "raid on covarnius 1"),
                    self.newVC(viewController: "raid on covarnius 2"),
                    self.newVC(viewController: "raid on covarnius 3"),
                    self.newVC(viewController: "raid on covarnius 3.5")]
            }
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        super.checkNewChapter(chapterName: Constants.RAID_ON_COVARNIUS, order: 11)
        ChapterSelectViewController.chapterSelect.deleteById(id: Constants.RISE_AND_SHINE)
        
    }

}
