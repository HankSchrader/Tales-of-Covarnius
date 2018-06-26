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
  
    @IBOutlet weak var tableView: UITableView?
    
    
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
    
    override func viewWillAppear(_ animated: Bool) {
        
        navigationItem.hidesBackButton = false
        self.navigationController?.isNavigationBarHidden = false
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
        self.navigationController?.isNavigationBarHidden = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is Chapter4PageViewController
        {
            let vc = segue.destination as? Chapter4PageViewController
            vc?.segueID = segue.identifier!
            vc?.previousRID = self.restorationIdentifier!
        }
        else if segue.destination is FakeScientistArcPageViewController {
            let vc = segue.destination as? FakeScientistArcPageViewController
            vc?.segueID = segue.identifier!
            vc?.previousRID = self.restorationIdentifier!
            
        }
        else if segue.destination is Chapter5PageViewController {
            let vc = segue.destination as? Chapter5PageViewController
            vc?.segueID = segue.identifier!
            vc?.previousRID = self.restorationIdentifier!
        } else if segue.destination is GoAsAmbassadorPageViewController {
            let vc = segue.destination as? GoAsAmbassadorPageViewController
            vc?.segueID = segue.identifier!
            vc?.previousRID = self.restorationIdentifier
        } else if segue.destination is RandomHapalStancePageViewController {
            let vc = segue.destination as? RandomHapalStancePageViewController
            vc?.segueID = segue.identifier!
            vc?.previousRID = self.restorationIdentifier!
        }
        

        
        MusicHelper.sharedHelper.fadeOutBackgroundMusic(resource: Constants.MAIN_MENU_SONG, fadeDuration: Constants.STANDARD_FADE_TIME)
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
    
    func goToChapter(chapter: String!) {
        //reload the chapters
        let fetchRequest: NSFetchRequest<Chapter> = Chapter.fetchRequest()
        do {
            let chapters = try PersistanceService.context.fetch(fetchRequest)
            self.chapters = chapters
            self.tableView?.reloadData()
        } catch
        {
            print("fetch failed!")
        }
     
        self.performSegue(withIdentifier: chapter, sender: self)
        
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
        self.performSegue(withIdentifier: cell!, sender: self)
        
    }
    

    

}


