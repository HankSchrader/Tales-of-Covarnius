//
//  ContainerViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 6/18/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController {
    
    enum SlideOutState {
        case bothCollapsed
        case leftPanelExpanded
        case rightPanelExpanded
    }
    
    var chapterNavigationController: UINavigationController!
    var chapterViewController: ChapterViewController!
    
    var currentState: SlideOutState = .bothCollapsed {
        didSet {
            let shouldShowShadow = currentState != .bothCollapsed
           // showShadowForCenterViewController(shouldShowShadow)
        }
    }
    
    var chapterSelectViewController: ChapterSelectViewController?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
