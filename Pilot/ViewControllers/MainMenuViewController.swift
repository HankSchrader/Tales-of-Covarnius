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
    
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    override func viewDidLoad() {
        navigationItem.hidesBackButton = true
        super.viewDidLoad()
        createBeginButton()
        createDeleteButton()
        createCreditsButton()
        
        MusicHelper.sharedHelper.initiateBackgroundMusic(resource: Constants.MAIN_MENU_SONG, numberOfLoops: 3)
       
        
        
    }
    
    //MARK: viewWillAppear is always used for animation.
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = false
        // Set the top label's animation alpha
        self.topLabel.alpha = 0
        self.bottomLabel.alpha = 0
        
        animateLabelTransition()
        MusicHelper.sharedHelper.fadeInBackgroundMusic(resource: Constants.MAIN_MENU_SONG,fadeDuration: Constants.STANDARD_FADE_TIME)

    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
   
    
    func animateLabelTransition() {
        // animate the alpha
        UIView.animate(withDuration: 4, animations: {self.topLabel.alpha = 1;
            self.bottomLabel.alpha = 1
        })
       
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
        view.sendSubview(toBack: button)
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
        view.sendSubview(toBack: button)
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
        view.sendSubview(toBack: button)
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
        
        MusicHelper.sharedHelper.fadeOutBackgroundMusic(resource: Constants.MAIN_MENU_SONG,fadeDuration: Constants.STANDARD_FADE_TIME)
        performSegue(withIdentifier: "toCredits", sender: self)
        
    }
    
}

// MARK: delegate protocol to display the current chapter on the manin menu screen.

protocol DisplayViewIDDelegate: class {
    func displayPageViewID(_ name : String?)
    
}


