//
//  ChapterPageViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 3/15/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit
import CoreData

class GenericPageViewController: UIPageViewController, UIPageViewControllerDelegate, UIPageViewControllerDataSource
 {

    @IBOutlet weak var tableView: UITableView!
    var segueID: String? = nil
    static let sharedGenericPageView = GenericPageViewController()
    let viewController = ViewController()
    var previousRID: String? = nil
   
    //The array of viewControllers. Keep adding to this as I continue to add more viewControllers
    lazy var orderedViewControllers = [UIViewController]()
    
    var pageControl = UIPageControl()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.clear
        self.dataSource = self
        if let firstViewController = orderedViewControllers.first {
            setViewControllers([firstViewController], direction: .forward, animated: false, completion: nil)
            //completion: nil. If I wanted code to be executed upon completion of swiping, I'd set it here.
        }
        
        self.delegate = self
        
        configurePageControl()
        
        
        // Do any additional setup after loading the view.
    }
 /*   override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        ChapterSelectViewController.chapterSelect.tableView?.reloadData()
        if(ChapterSelectViewController.chapterSelect.isChapterThere(chapterName: Constants.INTRO ) == false) {
            MusicHelper.sharedHelper.initiateBackgroundMusic(resource: Constants.NEW_CHAPTER_SOUND, numberOfLoops: Constants.NEW_CHAPTER_LOOP_COUNT)
            let newChapterAlert = UIAlertController(title: Constants.CHAPTER_UNLOCK_MESSAGE, message: Constants.INTRO, preferredStyle: UIAlertControllerStyle.alert)
            newChapterAlert.addAction(UIAlertAction(title: Constants.SUBMIT, style: UIAlertActionStyle.default, handler: nil))
            ChapterSelectViewController.chapterSelect.saveChapter(ChapterName: Constants.INTRO, order: 0)
            
            self.present(newChapterAlert, animated: true, completion: nil)
            
        }
        
    } */
    
    
    func configurePageControl() {
        pageControl = UIPageControl(frame: CGRect(x: 0, y: UIScreen.main.bounds.maxY - 50,width: UIScreen.main.bounds.width, height: 50))
        pageControl.numberOfPages = orderedViewControllers.count
        pageControl.currentPage = 0
        pageControl.tintColor = UIColor.black
        pageControl.pageIndicatorTintColor = UIColor.white
        pageControl.currentPageIndicatorTintColor = UIColor.black
        self.view.addSubview(pageControl)
    }
    
    func newVC(viewController : String, previousImage: String? = nil, newImage: String? = nil) -> UIViewController {
        setImage(image: newImage)
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: viewController)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*MARK: pageViewControllerBefore
     Returns the viewController that is BEFORE the current viewController
     */
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = orderedViewControllers.index(of: viewController) else {
            return nil
        }
        
        let previousIndex = viewControllerIndex - 1
        
        guard previousIndex >= 0 else {
            //return orderedViewControllers.last
            return nil
        }
        
        guard orderedViewControllers.count > previousIndex else {
            return nil
        }
        return orderedViewControllers[previousIndex]
    }
    
    //Transition Completed pageViewController, look for that in the list
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        let contentPageViewController = pageViewController.viewControllers![0]
        self.pageControl.currentPage = orderedViewControllers.index(of: contentPageViewController)!
    }
    /* MARK: pageViewControllerAfter
     Returns the viewController that is BEFORE the current viewController
     */
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = orderedViewControllers.index(of: viewController) else {
            return nil
        }
        
        let nextIndex = viewControllerIndex + 1
        
        guard orderedViewControllers.count != nextIndex else {
            //return orderedViewControllers.first
            return nil
        }
        
        guard orderedViewControllers.count > nextIndex else {
            return nil
        }
        return orderedViewControllers[nextIndex]
    }
    func checkNewChapter(chapterName: String?, order: Int16!) {
        ChapterSelectViewController.chapterSelect.tableView?.reloadData()
        if(ChapterSelectViewController.chapterSelect.isChapterThere(chapterName: chapterName) == false) {
            MusicHelper.sharedHelper.initiateBackgroundMusic(resource: Constants.NEW_CHAPTER_SOUND, numberOfLoops: Constants.NEW_CHAPTER_LOOP_COUNT)
            let newChapterAlert = UIAlertController(title: Constants.CHAPTER_UNLOCK_MESSAGE, message: chapterName, preferredStyle: UIAlertControllerStyle.alert)
            newChapterAlert.addAction(UIAlertAction(title: Constants.SUBMIT, style: UIAlertActionStyle.default, handler: nil))
            ChapterSelectViewController.chapterSelect.saveChapter(ChapterName: chapterName, order: order)
            
            self.present(newChapterAlert, animated: true, completion: nil)
    
        }
    }
    
    func setImage(image: String? = nil) {
        if(image != nil) {
        let imageName = image
        let image = UIImage(named: imageName!)
        let imageView = UIImageView(image: image)
        imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 200)
        
        view.addSubview(imageView)
        view.sendSubview(toBack: imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        imageView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        imageView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        }
    }
    
    func enableHardModeEffect() {
        var difficultySetting: [Difficulty] = []
        let difficultyModeFetchRequest: NSFetchRequest<Difficulty> = Difficulty.fetchRequest()
        do {
            difficultySetting = try PersistanceService.context.fetch(difficultyModeFetchRequest)
        } catch
        {
            print("fetch failed!")
        }
        if(difficultySetting.last?.isEasyMode == false) {
           
            ChapterViewController.chapterVC.navButton.isEnabled = false
            ChapterSelectViewController.chapterSelect.deleteAllData()
        }
    }
}
