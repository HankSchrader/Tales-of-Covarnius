//
//  MainMenuViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 2/26/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit
import CoreData


class ViewController: ChapterViewController {
    var menuShowing = false
    static let sharedHelper = ViewController()
   // weak var delegate: DisplayViewIDDelegate?
    
    var topLabel = UILabel()
    var bottomLabel = UILabel()
    
    override func viewDidLoad() {
        navigationItem.hidesBackButton = true
        super.viewDidLoad()
        createBeginButton()
        createDeleteButton()
        createCreditsButton()
        createTopLabel()
        createBottomLabel()
    
        

        
        MusicHelper.sharedHelper.initiateBackgroundMusic(resource: Constants.MAIN_MENU_SONG, numberOfLoops: 3)
       
        
        
    }
    
    //MARK: viewWillAppear is always used for animation.
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
      
        // Set the top label's animation alpha
        self.topLabel.alpha = 0
        self.bottomLabel.alpha = 0
      
        
        animateLabelTransition()
        MusicHelper.sharedHelper.fadeInBackgroundMusic(resource: Constants.MAIN_MENU_SONG,fadeDuration: Constants.STANDARD_FADE_TIME)

    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
        if(ChapterSelectViewController.chapterSelect.isChapterThere(chapterName: Constants.MAIN_MENU) == false) {
            ChapterSelectViewController.chapterSelect.saveChapter(ChapterName: Constants.MAIN_MENU, order: -1)
        }
    }
    func createTopLabel() {
      
        self.topLabel.backgroundColor = UIColor.clear
        self.topLabel.text = "Tales Of"
        self.topLabel.textColor = UIColor.black
        
        self.topLabel.font = UIFont(name: "Futura", size: 50.0)
        if self.topLabel.applyGradientWith(startColor: .red, endColor: .white) {
             print("Gradient successfully applied")
        } else {
            topLabel.textColor = .black
        }
       
        
        self.topLabel.frame = CGRect(x: view.frame.width/2 - 100 , y: view.frame.height/10, width: 400, height: 70)
        
     
        
        view.addSubview(self.topLabel)
        view.bringSubview(toFront: self.topLabel)
      
    }
    
    func createBottomLabel() {
      
        self.bottomLabel.backgroundColor = UIColor.clear
        self.bottomLabel.text = "Covarnius"
        self.bottomLabel.textColor = UIColor.black
        
        self.bottomLabel.font = UIFont(name: "Futura", size: 80.0)
        if self.bottomLabel.applyGradientWith(startColor: .white, endColor: .red) {
            print("Gradient successfully applied")
        } else{
            print("Not successul")
            bottomLabel.textColor = .black
        }
        
        if(self.view.frame.size.width < 400 ) {
                    self.bottomLabel.frame = CGRect(x: view.frame.width/2 - 160 , y: view.frame.height/5, width: 500, height: 80)
        } else {
                 self.bottomLabel.frame = CGRect(x: view.frame.width/2 - 175 , y: view.frame.height/5, width: 500, height: 80)
        }
        
        
        
        
        view.addSubview(self.bottomLabel)
        view.bringSubview(toFront: self.bottomLabel)
        
    }
   
    
    func animateLabelTransition() {
        // animate the alpha
        UIView.animate(withDuration: 2.0, delay: 0.0, options:[], animations: {
           self.topLabel.alpha = 1
            
          
        },  completion: { finished in
            if finished {
              self.animateBottomLabelTransition()
            }
        } )
       
    }
    func animateBottomLabelTransition() {
        // animate the alpha
        UIView.animate(withDuration: 2.0, delay: 0.0, options:[], animations: {
             self.bottomLabel.alpha = 1
            
        }, completion: nil)
        
    }
    //MARK: Begin button
    //Start from beginning button. This will trigger entry to the last view
    func createBeginButton() {
        let button = UIButton()
        button.setTitle("Start From The Beginning!", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .blue
        button.frame = CGRect(x: view.frame.width/2 - 150, y: view.frame.height/3, width: 300, height: 36)
    
        button.layer.borderWidth = 2
        button.layer.cornerRadius = 18
        
        view.addSubview(button)
        view.bringSubview(toFront: button)
        button.addTarget(self, action: #selector(ViewController.goToChapter1(_:)), for: UIControlEvents.touchUpInside)
        
    }
    
    //MARK: Delete button
    func createDeleteButton() {
        let button = UIButton()
        button.setTitle("Delete Data", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .red
        button.frame = CGRect(x: view.frame.width/2 - 150, y: view.frame.height/1.25, width: 300, height: 36)
        
        button.layer.borderWidth = 2
        button.layer.cornerRadius = 18
        
        view.addSubview(button)
        view.bringSubview(toFront: button)
        button.addTarget(self, action: #selector(ViewController.alertForDelete(_:)), for: UIControlEvents.touchUpInside)
    }
    
    //MARK: Credits button
    func createCreditsButton() {
        let button = UIButton()
        button.setTitle("Credits", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .blue
        button.frame = CGRect(x: view.frame.width/2 - 150, y: view.frame.height/1.5, width: 300, height: 36)
        
        button.layer.borderWidth = 2
        button.layer.cornerRadius = 18
        
        view.addSubview(button)
        view.bringSubview(toFront: button)
        button.addTarget(self, action: #selector(ViewController.goToCredits(_:)), for: UIControlEvents.touchUpInside)
    }
    
    //MARK: Alert For Delete button
    @IBAction func alertForDelete(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Are You Sure?", message: "All Progress Wil Be Gone!", preferredStyle: .alert)
        MusicHelper.sharedHelper.fadeOutBackgroundMusic(resource: Constants.MAIN_MENU_SONG,fadeDuration: 1.5)
        // Create the actions
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) {
            UIAlertAction in
            ChapterSelectViewController.chapterSelect.deleteAllData()
            MusicHelper.sharedHelper.fadeInBackgroundMusic(resource: Constants.MAIN_MENU_SONG,fadeDuration: 1.5)
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel) {
            UIAlertAction in
            MusicHelper.sharedHelper.fadeInBackgroundMusic(resource: Constants.MAIN_MENU_SONG,fadeDuration: 1.5)
            NSLog("Cancel Pressed")
        }
        
        // Add the actions
        alertController.addAction(okAction)
        alertController.addAction(cancelAction)
        
        // Present the controller
        self.present(alertController, animated: true, completion: nil)
        
    }
    
    @IBAction func goToChapter1(_ sender: UIButton) {
        //reload the chapters
        let fetchRequest: NSFetchRequest<Chapter> = Chapter.fetchRequest()
        do {
            let chapters = try PersistanceService.context.fetch(fetchRequest)
            ChapterSelectViewController.chapterSelect.chapters = chapters
             ChapterSelectViewController.chapterSelect.tableView?.reloadData()
        } catch
        {
            print("fetch failed!")
        }
        MusicHelper.sharedHelper.fadeOutBackgroundMusic(resource: Constants.MAIN_MENU_SONG,fadeDuration: Constants.STANDARD_FADE_TIME)
        //segue to chapter 1
        performSegue(withIdentifier: "Start From The Beginning!", sender: self)

    }
    
    @IBAction func goToCredits(_ sender: UIButton) {
        if(ChapterSelectViewController.chapterSelect.isChapterThere(chapterName: Constants.MAIN_MENU) == false) {
            
            ChapterSelectViewController.chapterSelect.saveChapter(ChapterName: Constants.MAIN_MENU, order: -1)
        }
        MusicHelper.sharedHelper.fadeOutBackgroundMusic(resource: Constants.MAIN_MENU_SONG,fadeDuration: Constants.STANDARD_FADE_TIME)
        performSegue(withIdentifier: "toCredits", sender: self)
        
    }
    
}

// MARK: delegate protocol to display the current chapter on the manin menu screen.

protocol DisplayViewIDDelegate: class {
    func displayPageViewID(_ name : String?)
    
}

extension UILabel {
    
    func applyGradientWith(startColor: UIColor, endColor: UIColor) -> Bool {
        
        var startColorRed:CGFloat = 0
        var startColorGreen:CGFloat = 0
        var startColorBlue:CGFloat = 0
        var startAlpha:CGFloat = 0
        
        if !startColor.getRed(&startColorRed, green: &startColorGreen, blue: &startColorBlue, alpha: &startAlpha) {
            return false
        }
        
        var endColorRed:CGFloat = 0
        var endColorGreen:CGFloat = 0
        var endColorBlue:CGFloat = 0
        var endAlpha:CGFloat = 0
        
        if !endColor.getRed(&endColorRed, green: &endColorGreen, blue: &endColorBlue, alpha: &endAlpha) {
            return false
        }
        
        let gradientText = self.text ?? ""
        
        let name:String = kCTFontAttributeName as String
        let textSize: CGSize = gradientText.size(withAttributes: [NSAttributedStringKey(rawValue: name):self.font])
        let width:CGFloat = textSize.width
        let height:CGFloat = textSize.height
        
        UIGraphicsBeginImageContext(CGSize(width: width, height: height))
        
        guard let context = UIGraphicsGetCurrentContext() else {
            UIGraphicsEndImageContext()
            return false
        }
        
        UIGraphicsPushContext(context)
        
        let glossGradient:CGGradient?
        let rgbColorspace:CGColorSpace?
        let num_locations:size_t = 2
        let locations:[CGFloat] = [ 0.0, 1.0 ]
        let components:[CGFloat] = [startColorRed, startColorGreen, startColorBlue, startAlpha, endColorRed, endColorGreen, endColorBlue, endAlpha]
        rgbColorspace = CGColorSpaceCreateDeviceRGB()
        glossGradient = CGGradient(colorSpace: rgbColorspace!, colorComponents: components, locations: locations, count: num_locations)
        let topCenter = CGPoint.zero
        let bottomCenter = CGPoint(x: 0, y: textSize.height)
        context.drawLinearGradient(glossGradient!, start: topCenter, end: bottomCenter, options: CGGradientDrawingOptions.drawsBeforeStartLocation)
        
        UIGraphicsPopContext()
        
        guard let gradientImage = UIGraphicsGetImageFromCurrentImageContext() else {
            UIGraphicsEndImageContext()
            return false
        }
        
        UIGraphicsEndImageContext()
        
        self.textColor = UIColor(patternImage: gradientImage)
        
        return true
}
}


