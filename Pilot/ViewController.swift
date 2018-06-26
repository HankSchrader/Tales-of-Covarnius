//
//  ViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 2/25/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit


class MainMenuViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createBeginButton()
        
        
    }
    func createBeginButton() {
        let button = UIButton()
        button.setTitle("Begin!", for: .normal)
        button.setTitleColor(.cyan, for: .normal)
        button.backgroundColor = .blue
        button.frame = CGRect(x: view.frame.width/2 - 50, y: view.frame.height/1.25, width: 100, height: 36)
        button.layer.borderWidth = 2
        button.layer.cornerRadius = 18
        print(view.frame.height)
        view.addSubview(button)
        
    }


}

