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
    var difficultySetting: [Difficulty]?
    var isOnEasyMode: Bool?
    var topLabel = UILabel()
    var bottomLabel = UILabel()
    var toggleDifficulty = UISwitch()
    
    var difficultyLabel = UILabel()
 
    override func viewDidLoad() {
        
        
        MusicHelper.sharedHelper.initiateBackgroundMusic(resource: Constants.MAIN_MENU_SONG, numberOfLoops: 3)

    }
    

    
    //MARK: viewWillAppear is always used for animation.
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
      
        // Set the top label's animation alpha
        self.topLabel.alpha = 0
        self.bottomLabel.alpha = 0
        self.difficultyLabel.alpha = 1
      
        let fetchRequest: NSFetchRequest<Difficulty> = Difficulty.fetchRequest()
        do {
            self.difficultySetting = try PersistanceService.context.fetch(fetchRequest)
        } catch
        {
            print("fetch failed!")
        }
      
        createBeginButton()
        createDeleteButton()
        createCreditsButton()
        createTopLabel()
        createBottomLabel()
        createUISwitch()
        
        //When the app installs for the first time, difficult settings will be nil.
        if(self.difficultySetting != nil) {
            createDifficultyLabel(contextLabel: difficultySetting?.last?.label)
            switchGradient(isEasyOn:  self.difficultySetting?.last?.isEasyMode, label: self.bottomLabel)
            switchGradient(isEasyOn:  self.difficultySetting?.last?.isEasyMode, label: self.topLabel)
            switchGradient(isEasyOn:  self.difficultySetting?.last?.isEasyMode, label: self.difficultyLabel)
        } else {
            createDifficultyLabel(contextLabel: "Regular Mode")
        }
        self.toggleDifficulty.tintColor = UIColor.red
       
        animateLabelTransition()
     
        if( difficultySetting?.last?.isEasyMode == true || difficultySetting?.last?.isEasyMode == nil ) {
            self.toggleDifficulty.setOn(true, animated: false)
        } else {
            self.toggleDifficulty.setOn(false, animated: false)
        }
        if((difficultySetting?.count)! > 1) {
            print("Puging...")
            purgeDifficultyData()
        }
        
        MusicHelper.sharedHelper.fadeInBackgroundMusic(resource: Constants.MAIN_MENU_SONG,fadeDuration: Constants.STANDARD_FADE_TIME)

    }
    

    @IBAction func callDifficultySwitch(_ sender: UISwitch) {
        let difficulty = Difficulty(context: PersistanceService.context)
        
        if(self.toggleDifficulty.isOn) {
            animateDifficultyTransition(label: self.difficultyLabel)
            animateDifficultyTransition(label: self.topLabel)
            animateDifficultyTransition(label: self.bottomLabel)
            difficulty.label = "Regular Mode"
            self.difficultyLabel.text = "Regular Mode"
            self.difficultyLabel.textAlignment = .center
            difficulty.isEasyMode = true
            switchGradient(isEasyOn: true, label: self.bottomLabel)
            switchGradient(isEasyOn: true, label: self.topLabel)
            switchGradient(isEasyOn: true, label: self.difficultyLabel)
            PersistanceService.saveContext()
        } else {
            animateDifficultyTransition(label: self.difficultyLabel)
            animateDifficultyTransition(label: self.topLabel)
            animateDifficultyTransition(label: self.bottomLabel)
            difficulty.isEasyMode = false
            difficulty.label = "Hard Mode"
            self.difficultyLabel.text = "Hard Mode"
            self.difficultyLabel.textAlignment = .center
            switchGradient(isEasyOn:  false, label: self.bottomLabel)
            switchGradient(isEasyOn: false, label: self.topLabel)
              switchGradient(isEasyOn: false, label: self.difficultyLabel)
            PersistanceService.saveContext()
        }
    }
    
    
    

    override func viewWillDisappear(_ animated: Bool) {
        
        if(ChapterSelectViewController.chapterSelect.isChapterThere(chapterName: Constants.MAIN_MENU) == false) {
            ChapterSelectViewController.chapterSelect.saveChapter(ChapterName: Constants.MAIN_MENU, order: -1)
        }
    }
    
    func switchGradient(isEasyOn: Bool?, label: UILabel) {
        if(isEasyOn != nil) {
            var startColor:UIColor = .black
            if(isEasyOn!) {
                startColor = .green
            } else {
                startColor = .red
            }
            if label.applyGradientWith(startColor: startColor, endColor: .white) {
                print("Gradient successfully applied")
            } else {
                label.textColor = .black
                
            }
        } else {
            if label.applyGradientWith(startColor: .green , endColor: .white) {
                print("Gradient successfully applied")
            } else {
                label.textColor = .black
                
            }
        }
    }
    func createTopLabel() {


        self.topLabel.backgroundColor = UIColor.clear
        self.topLabel.text = "Tales of"
        self.topLabel.textColor = UIColor.black
        if(self.view.frame.size.width > 600 ) {
            self.topLabel.font = UIFont(name: "Futura", size: 65.0)
            self.topLabel.frame = CGRect(x: view.frame.width/2 - 120 , y: view.frame.height/10, width: 400, height: 70)
        }
         else {

            self.topLabel.font = UIFont(name: "Futura", size: 50.0)
            self.topLabel.frame = CGRect(x: view.frame.width/2 - 100 , y: view.frame.height/10, width: 400, height: 70)
        }
        

        view.addSubview(self.topLabel)
        view.bringSubview(toFront: self.topLabel)
      
    }

    func createBottomLabel() {
      
        self.bottomLabel.backgroundColor = UIColor.clear
        self.bottomLabel.text = "Covarnius"
        self.bottomLabel.textColor = UIColor.black
        
        
        if(self.view.frame.size.width > 600 ) {
            self.bottomLabel.font = UIFont(name: "Futura", size: 90.0)
            self.bottomLabel.frame = CGRect(x: view.frame.width/2 - 200 , y: view.frame.height/5, width: 500, height: 80)
        } else {
            self.bottomLabel.font = UIFont(name: "Futura", size: 65.0)
            self.bottomLabel.frame = CGRect(x: view.frame.width/2 - 150 , y: view.frame.height/5, width: 500, height: 80)
            
        }

        view.addSubview(self.bottomLabel)
        view.bringSubview(toFront: self.bottomLabel)
        
    }
    
    func animateDifficultyTransition(label: UILabel!) {
        label.alpha = 0
        UIView.animate(withDuration: 1.0, delay: 0.0, options:[], animations: {
           label.alpha = 1
            
            
        },  completion:nil )
        
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
    
    //MARK: Begin button ALL BUTTONS AFTER THIS
    //Start from beginning button. This will trigger entry to the last view
    func createBeginButton() {
        let button = UIButton()
        button.setTitle("Start From The Beginning!", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .blue
        let width = self.view.frame.size.width
        if(width > 600) {
            button.frame = CGRect(x: view.frame.width/2 - 200, y: view.frame.height/3, width: 400, height: 45)
            button.layer.borderWidth = 3
            button.layer.cornerRadius = 23
        } else {
            button.frame = CGRect(x: view.frame.width/2 - 150, y: view.frame.height/3, width: 300, height: 36)
            button.layer.borderWidth = 2
            button.layer.cornerRadius = 18
        }
        

        
        view.addSubview(button)
        view.bringSubview(toFront: button)
        button.addTarget(self, action: #selector(ViewController.goToChapter1(_:)), for: UIControlEvents.touchUpInside)
        
    }
    
    //MARK: Credits button
    func createCreditsButton() {
        let button = UIButton()
        button.setTitle("Credits", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .blue
        let width = self.view.frame.size.width
        if(width > 600) {
            button.frame = CGRect(x: view.frame.width/2 - 200, y: view.frame.height/1.5, width: 400, height: 45)
            button.layer.borderWidth = 3
            button.layer.cornerRadius = 23
        } else {
            button.frame = CGRect(x: view.frame.width/2 - 150, y: view.frame.height/1.5, width: 300, height: 36)
            button.layer.borderWidth = 2
            button.layer.cornerRadius = 18
        }
        
        view.addSubview(button)
        view.bringSubview(toFront: button)
        button.addTarget(self, action: #selector(ViewController.goToCredits(_:)), for: UIControlEvents.touchUpInside)
    }

    
    //MARK: Delete button
    func createDeleteButton() {
        let button = UIButton()
        button.setTitle("Delete Data", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .red
        let width = self.view.frame.size.width
        if(width > 600) {
            button.frame = CGRect(x: view.frame.width/2 - 200, y: view.frame.height/1.35, width: 400, height: 45)
            button.layer.borderWidth = 3
            button.layer.cornerRadius = 23
        } else {
            button.frame = CGRect(x: view.frame.width/2 - 150, y: view.frame.height/1.35, width: 300, height: 36)
            button.layer.borderWidth = 2
            button.layer.cornerRadius = 18
        }
        
        view.addSubview(button)
        view.bringSubview(toFront: button)
        button.addTarget(self, action: #selector(ViewController.alertForDelete(_:)), for: UIControlEvents.touchUpInside)
    }
    
    
    
    func createDifficultyLabel(contextLabel: String?) {
        let label = self.difficultyLabel
        label.text = contextLabel
        label.backgroundColor = .clear
        label.textAlignment = .center
        let width = self.view.frame.size.width
        self.difficultyLabel.changeFontSizeByDevice(width: width)
        label.frame = CGRect(x:  view.frame.width/2 - 150, y: view.frame.height/1.20, width: 300, height: 50)
        view.addSubview(label)
        view.bringSubview(toFront: label)
    }

    func createUISwitch() {
        self.toggleDifficulty.frame = CGRect(x: view.frame.width/2 - 25.0 , y: view.frame.height/1.10, width: 400, height: 70)
        view.addSubview(self.toggleDifficulty)
        view.bringSubview(toFront: self.toggleDifficulty)
        self.toggleDifficulty.addTarget(self, action: #selector(ViewController.callDifficultySwitch(_:)), for: UIControlEvents.touchUpInside)
        
        
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
    
    //Core data saves the Difficulty boolean into an array, but I only ever need to know the last
    //value. So I delete everything up to the last value.
    func purgeDifficultyData() {
        // Initialize Fetch Request
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Difficulty")
        
        // Configure Fetch Request
        fetchRequest.includesPropertyValues = false
        
        do {
            let items = try PersistanceService.context.fetch(fetchRequest) as! [NSManagedObject]
            let itemSize = items.count - 1
            var i = 0
            while i < itemSize {
                print("deleting...")
                PersistanceService.context.delete(items[i])
                i=i+1
            }
            
            // Save Changes
            try PersistanceService.context.save()
        } catch {
            NSLog("Delete Failed")
        }
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


