//
//  HapalImageViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 3/23/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class HapalImageViewController: UIViewController {

    let someImageView: UIImageView = {
        let theImageView = UIImageView()
        theImageView.image = UIImage(named: "Baby_Hapal.png")
        theImageView.translatesAutoresizingMaskIntoConstraints = false //You need to call this property so the image is added to your view
        return theImageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.addSubview(someImageView) //This add it the view controller without constraints
        someImageViewConstraints() //This function is outside the viewDidLoad function that controls the constraints

    }
    
    // do not forget the `.isActive = true` after every constraint
    func someImageViewConstraints() {
        someImageView.widthAnchor.constraint(equalToConstant: 180).isActive = true
        someImageView.heightAnchor.constraint(equalToConstant: 180).isActive = true
        someImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        someImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 28).isActive = true
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
