//
//  TheTwoDiplomatsPageViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 3/20/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class TheTwoDiplomatsPageViewController: GenericPageViewController {
    var keyFlag: Bool = false

    lazy override var orderedViewControllers: [UIViewController] = {
            let segue: String? = self.segueID
            switch segue {
                
            case "sensitive mission"?:
                 setImage(image: Constants.TAKE_KEY_PIC)
                return [self.newVC(viewController: "Image"),
                        self.newVC(viewController: "two diplomats 1"),
                        self.newVC(viewController: "two diplomats 2")]
            case "The Two Diplomats"?:
                setImage(image: Constants.TAKE_KEY_PIC)
                return [self.newVC(viewController: "Image"),
                        self.newVC(viewController: "two diplomats 1"),
                        self.newVC(viewController: "two diplomats 2")]
            case "don't mess with him"?:
                setImage(image: Constants.TAKE_KEY_PIC)
                return [self.newVC(viewController: "Image"),
                        self.newVC(viewController: "two diplomats 1"),
                        self.newVC(viewController: "two diplomats 2")]
            case "take key"?:
            
                setImage(image: Constants.KORGLE_PIC)
                return [self.newVC(viewController: "Image"),
                        self.newVC(viewController: "took the key"),
                        self.newVC(viewController: "two diplomats 3"),
                        self.newVC(viewController: "two diplomats 4")]
            case "too risky"?:
                setImage(image: Constants.KORGLE_PIC)
                return [self.newVC(viewController: "Image"),
                        self.newVC(viewController: "no key taken"),
                        self.newVC(viewController: "two diplomats 3"),
                        self.newVC(viewController: "two diplomats 4")]
            case "anti-gravity"?:
                setImage(image: Constants.KORGLE_PIC)
                return [self.newVC(viewController: "Image"),
                        self.newVC(viewController: "two diplomats 6"),
                        self.newVC(viewController: "two diplomats 7"),
                        self.newVC(viewController: "two diplomats 8"),
                        self.newVC(viewController: "two diplomats 9"),
                        self.newVC(viewController: "two diplomats 10"),
                        self.newVC(viewController: "two diplomats 11"),
                        self.newVC(viewController: "two diplomats 12"),
                        self.newVC(viewController: "two diplomats 13"),
                        self.newVC(viewController: "two diplomats 14")]
            case "clog"?:
                setImage(image: Constants.CLOG_TOILET_PIC)
                return [self.newVC(viewController: "Image"),
                        self.newVC(viewController: "clog 1"),
                        self.newVC(viewController: "clog 2"),
                        self.newVC(viewController: "clog 3"),
                        self.newVC(viewController: "clog 4")]
            case "not without Luna"?:
                setImage(image: Constants.SNEEZING_SINISTERIAN_PIC)
                return [self.newVC(viewController: "Image"),
                        self.newVC(viewController: "not without Luna")]
            case "secret weapon"?:
                setImage(image: Constants.ICERAY_PIC)
                return [self.newVC(viewController: "Image"),
                           self.newVC(viewController: "two diplomats 5")]
              
            case "go back to toilet"?:
                setImage(image: Constants.CLOG_TOILET_PIC)
                return [self.newVC(viewController: "Image"),
                        self.newVC(viewController: "clog 1"),
                        self.newVC(viewController: "clog 2"),
                        self.newVC(viewController: "clog 3"),
                        self.newVC(viewController: "clog 4")]
            case "failed diversion"?:
                enableHardModeEffect()
                setImage(image: Constants.SINISTERIAN_GUARDS_PIC)
                return [self.newVC(viewController: "Image"),
                        self.newVC(viewController: "failed distraction 1"),
                        self.newVC(viewController: "failed distraction 2 The End")]
            default:
                setImage(image: Constants.TAKE_KEY_PIC)
                return [self.newVC(viewController: "Image"),
                        self.newVC(viewController: "two diplomats 1"),
                        self.newVC(viewController: "two diplomats 2")]
                
            }
        }()
    //The array of viewControllers. Keep adding to this as I continue to add more viewControllers
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        //They have made it to the view controller, but I don't want the chapter unlocked if it
        //was via the segue below
        if(self.segueID != "not without Luna" && self.segueID != "failed diversion") {
            super.checkNewChapter(chapterName: Constants.THE_TWO_DIPLOMATS, order: 10)
        }
    }
    

}
