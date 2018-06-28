//
//  ChapterSelectViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 3/2/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit
import CoreData

class ChapterSelectViewController: GenericDecisionPointViewController {
    static var chapterSelect = ChapterSelectViewController()
    var chapters = [Chapter]()
    let blackView = UIView()
    var vcToPresent: GenericPageViewController? = GenericPageViewController()
    
    func topMostController() -> UIViewController {
        var topController: UIViewController = UIApplication.shared.keyWindow!.rootViewController!
        while (topController.presentedViewController != nil) {
            topController = topController.presentedViewController!
        }
        return topController
    }
   
    @IBOutlet weak var tableViwe0: UITableView!
    
    let tableView: UITableView? = {
        let cv = UITableView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        cv.backgroundColor = UIColor.white
        return cv
    }()
    func loadChapters() {
        let fetchRequest: NSFetchRequest<Chapter> = Chapter.fetchRequest()
        do {
            let chapters = try PersistanceService.context.fetch(fetchRequest)
            self.chapters = chapters
            self.tableView?.reloadData()
        } catch
        {
            NSLog("FETCH FAILED")
        }
        
    }
    
    override func viewDidLoad() {
      //  super.viewDidLoad()
        
        let fetchRequest: NSFetchRequest<Chapter> = Chapter.fetchRequest()
        do {
        let chapters = try PersistanceService.context.fetch(fetchRequest)
        
        self.chapters = chapters

        self.tableView?.reloadData()
        } catch
        {
            NSLog("FETCH FAILED")
        }
        
        //images.sorted(by: { $0.fileID > $1.fileID })
        tableView?.dataSource = self
        tableView?.delegate = self

    }
    
    @objc func showChapters(sender: UIButton?)  {
        MusicHelper.sharedHelper.fadeOutBackgroundMusic(resource: Constants.MAIN_MENU_SONG, fadeDuration: Constants.STANDARD_FADE_TIME)
        tableView?.dataSource = self
        tableView?.delegate = self
       
        if let window = UIApplication.shared.keyWindow {
            
            blackView.backgroundColor = UIColor(white: 0, alpha: 0.5)
            
            window.addSubview(blackView)
            window.bringSubview(toFront: blackView)
            window.addSubview(tableView!)
            
            tableView?.frame = CGRect(x: 0, y: 0, width: 0, height: window.frame.height)
            blackView.frame = window.frame
            blackView.alpha = 0
            
            UIView.animate(withDuration: 0.5, animations: {self.blackView.alpha = 1
                
                
            })
            
            UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations:
                { self.tableView?.frame = CGRect(x: -10, y: 0, width: window.frame.width / 2, height: window.frame.height)},
                           completion: nil)
            let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(handleDismiss(_:)))
            blackView.addGestureRecognizer(tap)
            blackView.isUserInteractionEnabled = true
            loadChapters()
        }
    }
    
    @objc func handleDismiss(_ sender: Any?) {
        UIView.animate(withDuration: 0.5, animations: {self.blackView.alpha = 0
            if let window = UIApplication.shared.keyWindow {
                UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseIn, animations:
                    { self.tableView?.frame = CGRect(x: -10, y: 0, width: 0, height: window.frame.height)},
                               completion: nil)}
            
        })
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        navigationItem.hidesBackButton = false
        self.navigationController?.isNavigationBarHidden = false
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
        self.navigationController?.isNavigationBarHidden = true
    }

    
    func saveChapter(ChapterName: String!, order: Int16!) {
            let chapter = Chapter(context: PersistanceService.context)
            chapter.name = ChapterName
            chapter.order = order
            PersistanceService.saveContext()
            self.chapters.append(chapter)
            self.tableView?.reloadData()
    }
    
    

    func isChapterThere(chapterName: String!) -> Bool {
        var isThere = false
        for chapters in self.chapters {
            if(chapterName == chapters.name) {
                isThere = true
            }
        }
        return isThere
    }
    
    func get(withPredicate queryPredicate: NSPredicate) -> [Chapter]{
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Chapter")
        
        fetchRequest.predicate = queryPredicate
        
        do {
            let response = try PersistanceService.context.fetch(fetchRequest)
            return response as! [Chapter]
            
        } catch let error as NSError {
            // failure
            print(error)
            return [Chapter]()
        }
    }
    
    func getById(id: String?) -> Chapter? {
        var chapter: Chapter? = nil
        if(isChapterThere(chapterName: id)) {
            let gotChapter = get(withPredicate: NSPredicate(format: "name = %@", id!))
            chapter = gotChapter[0]
        }
        return chapter
    }
    
    func deleteById(id: String?) {
        if(id != nil) {
            if(isChapterThere(chapterName: id)) {
                do {
                    let chapter = getById(id: id)
                    PersistanceService.context.delete(chapter!)
                    try PersistanceService.context.save()
                }
                catch {
                     NSLog("Delete of record Failed")
                }
            
                }
            }
    }

    func deleteAllData() {
        // Initialize Fetch Request
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Chapter")
        
        // Configure Fetch Request
        fetchRequest.includesPropertyValues = false
        
        do {
            let items = try PersistanceService.context.fetch(fetchRequest) as! [NSManagedObject]
            
            for item in items {
                PersistanceService.context.delete(item)
            }
            
            // Save Changes
            try PersistanceService.context.save()
        } catch {
            NSLog("Delete Failed")
        }
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
    }
    
    func goToPageView(cell: String!) -> GenericPageViewController? {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        switch cell {
        case Constants.INTRO:
            vcToPresent = storyboard.instantiateViewController(withIdentifier: "Chap1PVC") as! IntroPageViewController
            vcToPresent?.previousRID = Constants.INTRO
        case Constants.ONTO_COVARNIUS:
            vcToPresent = storyboard.instantiateViewController(withIdentifier: "Chap2PVC") as! Chapter2PageViewController
            vcToPresent?.previousRID = Constants.ONTO_COVARNIUS
        case Constants.LANDED_ON_COVARNIUS:
            vcToPresent = storyboard.instantiateViewController(withIdentifier: "Chap3PVC") as! Chapter3PageViewController
            vcToPresent?.previousRID = Constants.LANDED_ON_COVARNIUS
        case Constants.BY_RANDOM_HAPAL_STANCE_NO_TRUST:
            vcToPresent = storyboard.instantiateViewController(withIdentifier: "HapalStanceVC") as! RandomHapalStancePageViewController
            vcToPresent?.previousRID = Constants.BY_RANDOM_HAPAL_STANCE_NO_TRUST
        case Constants.BY_RANDOM_HAPAL_STANCE:
            vcToPresent = storyboard.instantiateViewController(withIdentifier: "HapalStanceVC") as! RandomHapalStancePageViewController
            vcToPresent?.previousRID = Constants.BY_RANDOM_HAPAL_STANCE
        case Constants.COWBOYS_OF_KATONIA:
            vcToPresent = storyboard.instantiateViewController(withIdentifier: "Chapt4VC") as! Chapter4PageViewController
            vcToPresent?.previousRID = Constants.COWBOYS_OF_KATONIA
        case Constants.EARTHS_GREATEST_SCIENTIST:
            vcToPresent = storyboard.instantiateViewController(withIdentifier: "Chapt4VC") as! Chapter4PageViewController
            vcToPresent?.previousRID = Constants.EARTHS_GREATEST_SCIENTIST
        case Constants.MASTER_OF_DISGUISE_OR_LIES:
            vcToPresent = storyboard.instantiateViewController(withIdentifier: "Chapter5VC") as! Chapter5PageViewController
            vcToPresent?.previousRID = Constants.MASTER_OF_DISGUISE_OR_LIES
        case Constants.FAKE_IT_TIL_YOU_MAKE_IT:
            vcToPresent = storyboard.instantiateViewController(withIdentifier: "FakeItVC") as! FakeScientistArcPageViewController
            vcToPresent?.previousRID = Constants.FAKE_IT_TIL_YOU_MAKE_IT
        case Constants.SNEAK_ONTO_SHIP:
            vcToPresent = storyboard.instantiateViewController(withIdentifier: "BoardingTicketVC") as! SneakOntoShipPageViewController
            vcToPresent?.previousRID = Constants.SNEAK_ONTO_SHIP
        case Constants.YOU_SAVED_THE_HAPAL:
            self.restorationIdentifier = Constants.YOU_SAVED_THE_HAPAL
            vcToPresent = storyboard.instantiateViewController(withIdentifier: "Chapt4VC") as! Chapter4PageViewController
            vcToPresent?.previousRID = Constants.YOU_SAVED_THE_HAPAL
        case Constants.YOU_LET_THE_HAPAL_DOWN:
            self.restorationIdentifier = Constants.YOU_LET_THE_HAPAL_DOWN
            vcToPresent = storyboard.instantiateViewController(withIdentifier: "Chapt4VC") as! Chapter4PageViewController
            vcToPresent?.previousRID = Constants.YOU_LET_THE_HAPAL_DOWN
        case Constants.RISE_AND_SHINE:
            vcToPresent = storyboard.instantiateViewController(withIdentifier: "Rise And ShineVC") as! RiseAndShinePageViewController
            vcToPresent?.previousRID = Constants.RISE_AND_SHINE
        case Constants.RAID_ON_COVARNIUS:
            vcToPresent = storyboard.instantiateViewController(withIdentifier: "RaidOnCovarnusVC") as! RaidOnCovarniusPageViewController
            vcToPresent?.previousRID = Constants.RAID_ON_COVARNIUS
        case Constants.AMBASSADOR_ARC:
            vcToPresent = storyboard.instantiateViewController(withIdentifier: "GoAsAmbassadorVC") as! GoAsAmbassadorPageViewController
            vcToPresent?.previousRID = Constants.AMBASSADOR_ARC
        case Constants.THE_TWO_DIPLOMATS:
            vcToPresent = storyboard.instantiateViewController(withIdentifier: "Two DiplomatsVC") as! TheTwoDiplomatsPageViewController
            vcToPresent?.previousRID = Constants.THE_TWO_DIPLOMATS
        default:
            let mainMenu = storyboard.instantiateViewController(withIdentifier: "MainMenu")
            present(mainMenu, animated: true, completion: nil)
            return nil

        }
        return vcToPresent
        
    }


}
extension ChapterSelectViewController: UITableViewDataSource, UITableViewDelegate{
    

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chapters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        chapters.sort(by: {$0.order < $1.order})
        
        cell.textLabel?.text = chapters[indexPath.row].name
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        let fetchRequest: NSFetchRequest<Chapter> = Chapter.fetchRequest()
        do {
            let chapters = try PersistanceService.context.fetch(fetchRequest)
            ChapterSelectViewController.chapterSelect.chapters = chapters
            ChapterSelectViewController.chapterSelect.tableView?.reloadData()
        } catch
        {
            print("fetch failed!")
        }
        
        let cell = chapters[indexPath.row].name
       
        let topVC = topMostController()
        
        let vcToPresent = goToPageView(cell: cell!)
        topVC.present(vcToPresent!, animated: true, completion: nil)
        handleDismiss(self)
        
    }
    

    

}


