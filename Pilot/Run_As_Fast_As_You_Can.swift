//
//  Stop_See_Sky_PageViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 3/15/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class Run_As_Fast_As_You_Can: GenericPageViewController {

    override lazy var orderedViewControllers: [UIViewController] =
        {
            return [self.newVC(viewController: "run_as_fast_as_you_can_1")]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool){
    }

}
