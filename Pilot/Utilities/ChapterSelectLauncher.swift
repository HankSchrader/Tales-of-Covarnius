//
//  ChapterSelectLauncher.swift
//  Pilot
//
//  Created by Erik Mikac on 6/17/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit
class ChapterSelectLauncher: UIViewController {
    let blackView = UIView()

        
    
    let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
    let collectionView: UICollectionView = {
        let cv = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    
        cv.backgroundColor = UIColor.lightGray.withAlphaComponent(0.5)
        cv.isSpringLoaded = false
        return cv
    }()
 
    @objc func showChapters(sender: UIButton?)  {
        
        if let window = UIApplication.shared.keyWindow {
            
            blackView.backgroundColor = UIColor(white: 0, alpha: 0.5)
            window.layer.shadowRadius = 2
            window.layer.shadowOpacity = 0.5
            window.addSubview(blackView)
            window.bringSubview(toFront: blackView)
        
            window.addSubview(collectionView)
            
            collectionView.frame = CGRect(x: 0, y: 0, width: 0, height: window.frame.height)
            blackView.frame = window.frame
            blackView.alpha = 0
            
            UIView.animate(withDuration: 0.5, animations: {self.blackView.alpha = 1
               
                
            })
            
            UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations:
                { self.collectionView.frame = CGRect(x: -10, y: 0, width: window.frame.width / 2, height: window.frame.height)},
                           completion: nil)
            
            let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(handleDismiss(_:)))
            
            blackView.addGestureRecognizer(tap)
            
            blackView.isUserInteractionEnabled = true
            
           
            
            
        }
    }
    
    @objc func handleDismiss(_ sender: Any?) {
        UIView.animate(withDuration: 0.5, animations: {self.blackView.alpha = 0
        if let window = UIApplication.shared.keyWindow {
            UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseIn, animations:
                { self.collectionView.frame = CGRect(x: -10, y: 0, width: 0, height: window.frame.height)},
                           completion: nil)}
     
        })
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}

extension UIColor {

    
   
}
