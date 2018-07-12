//
//  Chapter5PageViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 3/18/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class Chapter5PageViewController: GenericPageViewController {
   
   
    // Prints "The last letter of the alphabet"
    override func viewDidLoad() {
        
        
        let segue: String? = self.segueID
        self.orderedViewControllers =  {
            switch segue {
            case "Fake Scientist"?:
                setImage(image: Constants.KING_ZANARQ_PIC)
                return [self.newVC(viewController: "Image"),
                        self.newVC(viewController: "The Jig Is Up"),
                        self.newVC(viewController: "Chapter 5 1"),
                        self.newVC(viewController: "Chapter 5 1.5"),
                        self.newVC(viewController: "Chapter 5 brefore2"),
                        self.newVC(viewController: "Chapter 5 2")]
            case "never give up"?:
          
                setImage(image: Constants.CHRONO_AND_SHIP_PIC)
                return [self.newVC(viewController: "Image"),
                    
                    self.newVC(viewController: "Chapter 5 3"),
                    self.newVC(viewController: "Chapter 5 4"),
                    self.newVC(viewController: "Chapter 5 4.5"),
                    self.newVC(viewController: "Chapter 5 before5"),
                    self.newVC(viewController: "Chapter 5 5")]
            
            case "we tried"?:
     
                setImage(image: Constants.CHRONO_AND_SHIP_PIC)
                return [
                    self.newVC(viewController: "almost give up"),
                    self.newVC(viewController: "Chapter 5 6"),
                    self.newVC(viewController: "Chapter 5 before7"),
                    self.newVC(viewController: "Chapter 5 7")
                    
                ]
            case "great plan"?:

              setImage(image: Constants.AMBASSADOR_OR_SNEAK)
                return [self.newVC(viewController: "Image"),
                    self.newVC(viewController: "Chapter 5 6"),
                    self.newVC(viewController: "Chapter 5 before7"),
                    self.newVC(viewController: "Chapter 5 7")
                    
                ]
                
            default:
                setImage(image: Constants.KING_ZANARQ_PIC)
                return [self.newVC(viewController: "Image"),
                    self.newVC(viewController: "Chapter 5 1"),
                        self.newVC(viewController: "Chapter 5 1.5"),
                        self.newVC(viewController: "Chapter 5 brefore2"),
                self.newVC(viewController: "Chapter 5 2")]
            }
        }()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        super.checkNewChapter(chapterName: Constants.MASTER_OF_DISGUISE_OR_LIES,order: 6)
            
        }
    }
