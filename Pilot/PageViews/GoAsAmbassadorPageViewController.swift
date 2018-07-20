//
//  GoAsAmbassadorPageViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 3/19/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class GoAsAmbassadorPageViewController: GenericPageViewController {

    override func viewDidLoad() {
        let segue: String? = self.segueID
        self.orderedViewControllers =  {
            switch segue {
                
            case "change my mind"?:
                setImage(image: Constants.OUTSIDSE_CONCIL_CHAMBER_PIC)
                return [self.newVC(viewController: "Image"),
                        self.newVC(viewController: "Chapter 6 1 Ambassador"),
                        self.newVC(viewController: "Chapter 6 2 Ambassador")]
            case "ambassador arc"?:
                setImage(image: Constants.OUTSIDSE_CONCIL_CHAMBER_PIC)
                return [self.newVC(viewController: "Image"),
                        self.newVC(viewController: "Chapter 6 1 Ambassador"),
                        self.newVC(viewController: "Chapter 6 2 Ambassador")]
            case "sneak into storeroom"?:
                setImage(image: Constants.CHRONO_AND_LUNA_PIC)
                return [self.newVC(viewController: "Image"),
                        self.newVC(viewController: "council chamber sneak"),
                        self.newVC(viewController: "council chamber sneak 1.5"),
                        self.newVC(viewController: "Chrono knows the layout")]
            case "borrow"?:
                setImage(image: Constants.FRONT_DOOR_PIC)
                return [self.newVC(viewController: "Image"),
                        self.newVC(viewController: "break and enter?")]
            case "break in"?:
                removeImage(image: Constants.FRONT_DOOR_PIC)
                setImage(image: Constants.GROWLICS_PIC)
                return [self.newVC(viewController: "Image"),
                        self.newVC(viewController: "good growlics"),
                        self.newVC(viewController: "snack or run")]
            case "vicious growlics"?:
                super.setImage(image: Constants.GROWLICS_PIC)
                
                return [self.newVC(viewController: "Image"),
                        self.newVC(viewController: "They're Vicious. Run!"),
                        self.newVC(viewController: "They're Vicious. Run! 1.5"),
                        self.newVC(viewController: "They're Vicious. Run! 2"),
                        self.newVC(viewController: "They're Vicious. Run! 2.5"),
                        self.newVC(viewController: "Chrono knows the layout")]
            case "snack time"?:
                removeImage(image: Constants.GROWLICS_PIC)
                setImage(image: Constants.AMBASSADOR_FRIDGE_PIC)
                return [self.newVC(viewController: "Image"),
                        self.newVC(viewController: "what should they eat?")]
            case "dessert"?:
               setImage(image: Constants.CHRONO_AND_LUNA_PIC)
                
                return [self.newVC(viewController: "Image"),
                        self.newVC(viewController: "dessert"),
                        self.newVC(viewController: "dessert mistake"),
                        self.newVC(viewController: "council chamber sneak 1.5"),
                        self.newVC(viewController: "Chrono knows the layout")]
            case "stinky meat"?:
                setImage(image: Constants.PARKING_LOT_PIC)
                return [self.newVC(viewController: "Image"),
                        self.newVC(viewController: "Phase One Complete"),
                        self.newVC(viewController: "Chapter 6 3 Ambassador"),
                        self.newVC(viewController: "Chapter 6 4 Ambassador")]
                
            case "check door"?:
                setImage(image: Constants.PARKING_LOT_PIC)
                return [self.newVC(viewController: "Image"),
                        self.newVC(viewController: "check door"),
                        self.newVC(viewController: "Chapter 6 3 Ambassador"),
                        self.newVC(viewController: "Chapter 6 4 Ambassador")]
            case "shady turn back"?:
                removeImage(image: Constants.AMBASSADOR_FRIDGE_PIC)
                setImage(image: Constants.CHRONO_AND_LUNA_PIC)
                return [self.newVC(viewController: "Image"),
                        self.newVC(viewController: "council chamber sneak"),
                        self.newVC(viewController: "council chamber sneak 1.5"),
                        self.newVC(viewController: "Chrono knows the layout")]
            case "no time for questions"?:
                setImage(image: Constants.DOOR_OR_WINDOW_PIC)
                return [self.newVC(viewController: "Image"),
                        self.newVC(viewController: "do not ask")]
                
            case "not important"?:
                 setImage(image: Constants.LUNA_IN_SPACESHIP_PIC)
                return [
                    self.newVC(viewController: "Image"),
                    self.newVC(viewController: "notImportant"),
                    self.newVC(viewController: "Chapter 6 6 Ambassador"),
                    self.newVC(viewController: "Chapter 6 7 Ambassador")]
                
            case "keep thinking"?:
               setImage(image: Constants.LUNA_IN_SPACESHIP_PIC)
                return [self.newVC(viewController: "Image"),
                        self.newVC(viewController: "Chapter 6 5 Ambassador"),
                        self.newVC(viewController: "Chapter 6 6 Ambassador"),
                        self.newVC(viewController: "Chapter 6 7 Ambassador")]
                
            case "will eat anything"?:
                setImage(image: Constants.PANTRY_PIC)
                return [self.newVC(viewController: "Image"),
                        self.newVC(viewController: "eatAnythingTheEnd")]

            case "CCC"?:
                setImage(image: Constants.DOOR_OR_WINDOW_PIC)
                return [self.newVC(viewController: "Image"),
                        self.newVC(viewController: "CCC explanation"),
                        self.newVC(viewController: "do not ask")]

            default:
                setImage(image: Constants.OUTSIDSE_CONCIL_CHAMBER_PIC)
                return [self.newVC(viewController: "Image"),
                        self.newVC(viewController: "Chapter 6 1 Ambassador"),
                        self.newVC(viewController: "Chapter 6 2 Ambassador")]
            }

            
        }()
        super.viewDidLoad()
        
        
    }
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        super.checkNewChapter(chapterName: Constants.AMBASSADOR_ARC,order: 8)
        
    }

}
