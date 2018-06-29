//
//  SneakOntoShipPageViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 3/19/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class SneakOntoShipPageViewController: GenericPageViewController {
    override func viewDidLoad() {
        let segue: String? = self.segueID
        
        self.orderedViewControllers =  {
            
            switch segue {
            case "continue as planned"?:
                 setImage(image: Constants.PARKING_LOT_PIC)
                return [ self.newVC(viewController: "Chapter 6 2 Sneak Arc"),
                         self.newVC(viewController: "Chapter 6 3 Sneak Arc"),
                         self.newVC(viewController: "Chapter 6 4 Sneak Arc"),
                         self.newVC(viewController: "Chapter 6 5 Sneak Arc"),
                         self.newVC(viewController: "Chapter 6 6 Sneak Arc"),
                         self.newVC(viewController: "Chapter 6 6.5 Sneak Arc"),
                         self.newVC(viewController: "Chapter 6 7 Sneak Arc")]
                
            case "sneak arc"?:
                    setImage(image: Constants.LUNA_AND_AMBASSADOR_PIC)
                    return [self.newVC(viewController: "Chapter 6 1 Sneak Arc"),
                            self.newVC(viewController: "Chapter 6 1.5 Sneak Arc")]
        
            case "Luna Stays"?:
                setImage(image: Constants.BRIG_PIC)
                return [
                        self.newVC(viewController: "keepLunaGetSentToPrison"),
                        self.newVC(viewController: "Chapter 6 6 Sneak Arc"),
                        self.newVC(viewController: "Chapter 6 6.5 Sneak Arc"),
                        self.newVC(viewController: "Chapter 6 7 Sneak Arc")
                
                ]
            default:
                setImage(image: Constants.LUNA_AND_AMBASSADOR_PIC)
                return [self.newVC(viewController: "Chapter 6 1 Sneak Arc"),
                        self.newVC(viewController: "Chapter 6 1.5 Sneak Arc"),
                     ]
  
            }
        }()
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        super.checkNewChapter(chapterName: Constants.SNEAK_ONTO_SHIP, order: 10)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
