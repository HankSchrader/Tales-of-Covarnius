//
//  BackAtTheRanchPageViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 3/18/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class BackAtTheRanchPageViewController: GenericPageViewController  {
 
    override func viewDidLoad() {
        setImage(image: Constants.LUNA_EATING_PIC)
        self.orderedViewControllers =  {
            if self.segueID == "run" {
                //Katonian Standing next to the ship.
                return [self.newVC(viewController: "at_the_ranch_run_choice_part_1"),
                                        self.newVC(viewController: "at_the_ranch_run_choice_part_1.5"),
                        self.newVC(viewController: "at_the_ranch_run_choice_part_2"),
                       
                        self.newVC(viewController: "at_the_ranch_2"),
                        self.newVC(viewController: "at_the_ranch_2.5"),
                        self.newVC(viewController: "at_the_ranch_3"),
                        self.newVC(viewController: "at_the_ranch_4"),]
            } else {
                
                
                return [self.newVC(viewController: "at_the_ranch_1"),
                        self.newVC(viewController: "at_the_ranch_2"),
                        self.newVC(viewController: "at_the_ranch_2.5"),
                        self.newVC(viewController: "at_the_ranch_3"),
                        self.newVC(viewController: "at_the_ranch_4")]
            }
        }()
        super.viewDidLoad()
       

        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool){
        
        super.viewDidAppear(animated)
    }

}
