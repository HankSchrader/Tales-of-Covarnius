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
                return [self.newVC(viewController: "two diplomats 1"),
                        self.newVC(viewController: "two diplomats 2")]
            case "The Two Diplomats"?:
                setImage(image: Constants.TAKE_KEY_PIC)
                return [self.newVC(viewController: "two diplomats 1"),
                        self.newVC(viewController: "two diplomats 2")]
            case "don't mess with him"?:
                setImage(image: Constants.TAKE_KEY_PIC)
                return [self.newVC(viewController: "two diplomats 1"),
                        self.newVC(viewController: "two diplomats 2")]
            case "take key"?:
                removeImage(image:  Constants.TAKE_KEY_PIC)
                setImage(image: Constants.KORGLE_PIC)
                return [self.newVC(viewController: "took the key"),
                        self.newVC(viewController: "two diplomats 3"),
                        self.newVC(viewController: "two diplomats 4")]
            case "too risky"?:
                removeImage(image:  Constants.TAKE_KEY_PIC)
                setImage(image: Constants.KORGLE_PIC)
                return [self.newVC(viewController: "no key taken"),
                        self.newVC(viewController: "two diplomats 3"),
                        self.newVC(viewController: "two diplomats 4")]
            case "anti-gravity"?:
                setImage(image: Constants.KORGLE_PIC)
                return [self.newVC(viewController: "two diplomats 6"),
                        self.newVC(viewController: "two diplomats 7"),
                        self.newVC(viewController: "two diplomats 8"),
                        self.newVC(viewController: "two diplomats 9"),
                        self.newVC(viewController: "two diplomats 10"),
                        self.newVC(viewController: "two diplomats 11"),
                        self.newVC(viewController: "two diplomats 12"),
                        self.newVC(viewController: "two diplomats 13"),
                        self.newVC(viewController: "two diplomats 14")]
            case "clog"?:
                removeImage(image:  Constants.KORGLE_PIC)
                setImage(image: Constants.CLOG_TOILET_PIC)
                return [self.newVC(viewController: "clog 1"),
                        self.newVC(viewController: "clog 2"),
                        self.newVC(viewController: "clog 3"),
                        self.newVC(viewController: "clog 4")]
                
            case "go back to toilet"?:
                removeImage(image:  Constants.KORGLE_PIC)
                setImage(image: Constants.CLOG_TOILET_PIC)
                return [self.newVC(viewController: "clog 1"),
                        self.newVC(viewController: "clog 2"),
                        self.newVC(viewController: "clog 3"),
                        self.newVC(viewController: "clog 4")]
            case "failed diversion"?:
                setImage(image: Constants.SINISTERIAN_GUARDS_PIC)
                return [self.newVC(viewController: "failed distraction 1"),
                        self.newVC(viewController: "failed distraction 2")]
            default:
                setImage(image: Constants.TAKE_KEY_PIC)
                return [self.newVC(viewController: "two diplomats 1"),
                        self.newVC(viewController: "two diplomats 2")]
                
            }
        }()
    //The array of viewControllers. Keep adding to this as I continue to add more viewControllers
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        super.checkNewChapter(chapterName: Constants.THE_TWO_DIPLOMATS, order: 10)
    }
    

}
