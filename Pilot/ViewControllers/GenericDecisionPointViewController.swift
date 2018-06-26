//
//  GenericDecisionPointViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 3/23/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class GenericDecisionPointViewController: ChapterViewController {
    var segueID: String = ""
    var previousRID: String = ""
    

    override func viewDidLoad() {
       
            super.viewDidLoad()
            loadBorderColor()
            loadBorderWidth(borderWidth: 4.0)
            loadCornerRadius(cornerRadius: 15.0)
            loadTextBoxColor()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        loadDecisionPointButtons()
        let width = self.view.frame.size.width
        self.intoTextBox?.changeFontSizeByDevice(width: width)
        self.murkblurTextBox?.changeFontSizeByDevice(width: width)
        self.tellKingOrNotTextBox?.changeFontSizeByDevice(width: width)
        self.chap2_4TextBox?.changeFontSizeByDevice(width: width)
        self.turnBackTextBox?.changeFontSizeByDevice(width: width)
        self.katonian3TextBox?.changeFontSizeByDevice(width: width)
        self.snackOrRunTextBox?.changeFontSizeByDevice(width: width)
        self.ramShipNextTextBox?.changeFontSizeByDevice(width: width)
        self.fetchKeyTextBox?.changeFontSizeByDevice(width: width)
        
        self.atTheRanch_4TextBox?.changeFontSizeByDevice(width: width)
        self.hapalStanceTextBox?.changeFontSizeByDevice(width: width)
        self.someSortOfMistake?.changeFontSizeByDevice(width: width)
        
        self.gettingShadySneakIntoAmbassadorHouseTextBox?.changeFontSizeByDevice(width: width)
        self.warMonger1TextBox?.changeFontSizeByDevice(width: width)
        self.chronoKnowsTheLayoutTextBox?.changeFontSizeByDevice(width: width)
        
        self.chapter5_2TextBox?.changeFontSizeByDevice(width: width)
        self.chapter5_7TextBox?.changeFontSizeByDevice(width: width)
        self.chapter6_7TextBox?.changeFontSizeByDevice(width: width)
        
        self.chapter6_7AmbassadorTextBox?.changeFontSizeByDevice(width: width)
        self.jigsUpChoiceTextBox?.changeFontSizeByDevice(width: width)
        self.doNotAskAboutCCCTextBox?.changeFontSizeByDevice(width: width)
        
        self.whatShouldGrowlicsEatTextBox?.changeFontSizeByDevice(width: width)
        self.chapter5_5TextBox?.changeFontSizeByDevice(width: width)
        self.chap3_3TextBox?.changeFontSizeByDevice(width: width)
        
        self.twoDiplomats2TextBox?.changeFontSizeByDevice(width: width)
        self.twoDiplomats4TextBox?.changeFontSizeByDevice(width: width)
        self.twoDiplomats5TextBox?.changeFontSizeByDevice(width: width)
        self.chapter6_2Ambassador?.changeFontSizeByDevice(width: width)
        
        self.twoDiplomats14TextBox?.changeFontSizeByDevice(width: width)
        self.hyperSleep0TextBox?.changeFontSizeByDevice(width: width)
        self.clog4TextBox?.changeFontSizeByDevice(width: width)
        self.itMustBeFateTextBox?.changeFontSizeByDevice(width: width)
        self.chap6_4TextBox?.changeFontSizeByDevice(width: width)
        self.raidOnCovarnius3Point5TextBox?.changeFontSizeByDevice(width: width)
        self.seriousTextbox?.changeFontSizeByDevice(width: width)


        self.chap2_4TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.tellKingOrNotTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.turnBackTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.katonian3TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.ramShipNextTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.fetchKeyTextBox?.setContentOffset(CGPoint.zero, animated: true)
        
        self.atTheRanch_4TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.hapalStanceTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.someSortOfMistake?.setContentOffset(CGPoint.zero, animated: true)
        
        self.gettingShadySneakIntoAmbassadorHouseTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.warMonger1TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chronoKnowsTheLayoutTextBox?.setContentOffset(CGPoint.zero, animated: true)
        
        self.chapter5_2TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chapter5_7TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chapter6_7TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chapter6_2Ambassador?.setContentOffset(CGPoint.zero, animated: true)
        
        self.chapter6_7AmbassadorTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.jigsUpChoiceTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.doNotAskAboutCCCTextBox?.setContentOffset(CGPoint.zero, animated: true)
        
        self.whatShouldGrowlicsEatTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chapter5_5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chap3_3TextBox?.setContentOffset(CGPoint.zero, animated: true)
        
        self.snackOrRunTextBox?.setContentOffset(CGPoint.zero, animated: true)
        
        self.twoDiplomats2TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.twoDiplomats4TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.twoDiplomats5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        
        self.twoDiplomats14TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.hyperSleep0TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.clog4TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.itMustBeFateTextBox?.setContentOffset(CGPoint.zero, animated: true)
          self.chap6_4TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.raidOnCovarnius3Point5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.seriousTextbox?.setContentOffset(CGPoint.zero, animated: true)
        self.intoTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.murkblurTextBox?.setContentOffset(CGPoint.zero, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func goToMainQuestAction(_ sender: Any) {
     decisionButton.addTarget(self, action: #selector(self.goToMainQuest(_:segue:)), for: UIControlEvents.touchUpInside)
    }
    
    @IBAction func goToMainQuest(_ sender: UIButton, segue: UIStoryboardSegue) {
        self.segueID = segue.identifier!
        performSegue(withIdentifier: self.segueID, sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      
        if segue.destination is FakeScientistArcPageViewController
        {
            let vc = segue.destination as? FakeScientistArcPageViewController
            vc?.segueID = segue.identifier!
        }
        else if segue.destination is Chapter2PageViewController {
            let vc = segue.destination as? Chapter2PageViewController
            vc?.segueID = segue.identifier!
        }
        else if segue.destination is IntroPageViewController {
            let vc = segue.destination as? IntroPageViewController
            vc?.segueID = segue.identifier!
        }
        else if segue.destination is BackAtTheRanchPageViewController {
           let vc = segue.destination as? BackAtTheRanchPageViewController
            vc?.segueID = segue.identifier!
        }
         else if segue.destination is Chapter3PageViewController
        {
            let vc = segue.destination as? Chapter3PageViewController
            vc?.segueID = segue.identifier
        }
        else if segue.destination is Chapter4PageViewController
        {
            let vc = segue.destination as? Chapter4PageViewController
            vc?.segueID = segue.identifier!
        }
        else if segue.destination is RandomHapalStancePageViewController
        {
            
            let vc = segue.destination as? RandomHapalStancePageViewController
            vc?.segueID = segue.identifier!
        }
        else if segue.destination is GoAsAmbassadorPageViewController
        {
            let vc = segue.destination as? GoAsAmbassadorPageViewController
            vc?.segueID = segue.identifier!
        }
        else if segue.destination is Chapter5PageViewController
        {
           
            let vc = segue.destination as? Chapter5PageViewController
            vc?.segueID = segue.identifier!
        }
        else if segue.destination is SneakOntoShipPageViewController
        {
            let vc = segue.destination as? SneakOntoShipPageViewController
            vc?.segueID = segue.identifier!
        }
        else if segue.destination is RiseAndShinePageViewController
        {
            let vc = segue.destination as? RiseAndShinePageViewController
            vc?.segueID = segue.identifier!
        }
            
        else if segue.destination is RaidOnCovarniusPageViewController {
             print("Inside the segue")
            let vc = segue.destination as? RaidOnCovarniusPageViewController
            vc?.segueID = segue.identifier!
        }
        
        else if segue.destination is TheTwoDiplomatsPageViewController {
            let vc = segue.destination as? TheTwoDiplomatsPageViewController
            vc?.segueID = segue.identifier!
        }
        
        
    }
    
    override func loadBorderColor() {
        let Color = UIColor.lightGray
        let myColor = Color.cgColor
        self.intoTextBox?.layer.borderColor = myColor
        self.murkblurTextBox?.layer.borderColor = myColor
        self.chap2_4TextBox?.layer.borderColor = myColor
        self.tellKingOrNotTextBox?.layer.borderColor = myColor
        self.turnBackTextBox?.layer.borderColor = myColor
        self.katonian3TextBox?.layer.borderColor = myColor
        self.ramShipNextTextBox?.layer.borderColor = myColor
        self.fetchKeyTextBox?.layer.borderColor = myColor
        
        self.atTheRanch_4TextBox?.layer.borderColor = myColor
        self.hapalStanceTextBox?.layer.borderColor = myColor
        self.someSortOfMistake?.layer.borderColor = myColor
        
        self.gettingShadySneakIntoAmbassadorHouseTextBox?.layer.borderColor = myColor
        self.warMonger1TextBox?.layer.borderColor = myColor
        self.chronoKnowsTheLayoutTextBox?.layer.borderColor = myColor
        
        self.chapter5_2TextBox?.layer.borderColor = myColor
        self.chapter5_7TextBox?.layer.borderColor = myColor
        self.chapter6_7TextBox?.layer.borderColor = myColor
        
        self.chapter6_7AmbassadorTextBox?.layer.borderColor = myColor
        self.jigsUpChoiceTextBox?.layer.borderColor = myColor
        self.doNotAskAboutCCCTextBox?.layer.borderColor = myColor
        
        self.whatShouldGrowlicsEatTextBox?.layer.borderColor = myColor
        self.chapter5_5TextBox?.layer.borderColor = myColor
        self.chap3_3TextBox?.layer.borderColor = myColor
        
        self.twoDiplomats2TextBox?.layer.borderColor = myColor
        self.twoDiplomats4TextBox?.layer.borderColor = myColor
        self.twoDiplomats5TextBox?.layer.borderColor = myColor
        self.chapter6_2Ambassador?.layer.borderColor = myColor
        
        self.twoDiplomats14TextBox?.layer.borderColor = myColor
        self.hyperSleep0TextBox?.layer.borderColor = myColor
        self.clog4TextBox?.layer.borderColor = myColor
        self.itMustBeFateTextBox?.layer.borderColor = myColor
        self.chap6_4TextBox?.layer.borderColor = myColor
        self.raidOnCovarnius3Point5TextBox?.layer.borderColor = myColor
        self.seriousTextbox?.layer.borderColor = myColor
        
        self.snackOrRunTextBox?.layer.borderColor = myColor
        
    }
    
    override func loadBorderWidth(borderWidth: CGFloat!) {
        self.intoTextBox?.layer.borderWidth = borderWidth
        self.murkblurTextBox?.layer.borderWidth = borderWidth
        self.chap2_4TextBox?.layer.borderWidth = borderWidth
        self.tellKingOrNotTextBox?.layer.borderWidth = borderWidth
        self.turnBackTextBox?.layer.borderWidth = borderWidth
        self.katonian3TextBox?.layer.borderWidth = borderWidth
        self.ramShipNextTextBox?.layer.borderWidth = borderWidth
        self.fetchKeyTextBox?.layer.borderWidth = borderWidth
        self.atTheRanch_4TextBox?.layer.borderWidth = borderWidth
        self.hapalStanceTextBox?.layer.borderWidth = borderWidth
        self.someSortOfMistake?.layer.borderWidth = borderWidth
        
        self.gettingShadySneakIntoAmbassadorHouseTextBox?.layer.borderWidth = borderWidth
        self.warMonger1TextBox?.layer.borderWidth = borderWidth
        self.chronoKnowsTheLayoutTextBox?.layer.borderWidth = borderWidth
        
        self.chapter5_2TextBox?.layer.borderWidth = borderWidth
        self.chapter5_7TextBox?.layer.borderWidth = borderWidth
        self.chapter6_7TextBox?.layer.borderWidth = borderWidth
        
        self.chapter6_7AmbassadorTextBox?.layer.borderWidth = borderWidth
        self.jigsUpChoiceTextBox?.layer.borderWidth = borderWidth
        self.doNotAskAboutCCCTextBox?.layer.borderWidth = borderWidth
        
        self.whatShouldGrowlicsEatTextBox?.layer.borderWidth = borderWidth
        self.chapter5_5TextBox?.layer.borderWidth = borderWidth
        self.chap3_3TextBox?.layer.borderWidth = borderWidth
        
        self.twoDiplomats2TextBox?.layer.borderWidth = borderWidth
        self.twoDiplomats4TextBox?.layer.borderWidth = borderWidth
        self.twoDiplomats5TextBox?.layer.borderWidth = borderWidth
        self.chapter6_2Ambassador?.layer.borderWidth = borderWidth
        
        self.twoDiplomats14TextBox?.layer.borderWidth = borderWidth
        self.hyperSleep0TextBox?.layer.borderWidth = borderWidth
        self.clog4TextBox?.layer.borderWidth = borderWidth
        self.itMustBeFateTextBox?.layer.borderWidth = borderWidth
        self.chap6_4TextBox?.layer.borderWidth = borderWidth
        self.raidOnCovarnius3Point5TextBox?.layer.borderWidth = borderWidth
        self.seriousTextbox?.layer.borderWidth = borderWidth
        
        self.snackOrRunTextBox?.layer.borderWidth = borderWidth
        

    }
    
    override func loadTextBoxColor() {
        self.intoTextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.murkblurTextBox?.layer.backgroundColor = UIColor.lightText.cgColor

        self.chap2_4TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.tellKingOrNotTextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.turnBackTextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.katonian3TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.ramShipNextTextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.fetchKeyTextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.atTheRanch_4TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.hapalStanceTextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.someSortOfMistake?.layer.backgroundColor = UIColor.lightText.cgColor
        
        self.gettingShadySneakIntoAmbassadorHouseTextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.warMonger1TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.chronoKnowsTheLayoutTextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        
        self.chapter5_2TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.chapter5_7TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.chapter6_7TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        
        self.chapter6_7AmbassadorTextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.jigsUpChoiceTextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.doNotAskAboutCCCTextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        
        self.whatShouldGrowlicsEatTextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.chapter5_5TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.chap3_3TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        
        self.twoDiplomats2TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.twoDiplomats4TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.twoDiplomats5TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.chapter6_2Ambassador?.layer.backgroundColor = UIColor.lightText.cgColor
        
        self.twoDiplomats14TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.hyperSleep0TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.clog4TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.itMustBeFateTextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.chap6_4TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.raidOnCovarnius3Point5TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.seriousTextbox?.layer.backgroundColor = UIColor.lightText.cgColor
        
        self.snackOrRunTextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        
        
    }
    
    override func loadCornerRadius(cornerRadius: CGFloat!) {
        self.intoTextBox?.layer.cornerRadius = cornerRadius
        self.murkblurTextBox?.layer.cornerRadius = cornerRadius
        self.chap2_4TextBox?.layer.cornerRadius = cornerRadius
        self.tellKingOrNotTextBox?.layer.cornerRadius = cornerRadius
        self.turnBackTextBox?.layer.cornerRadius = cornerRadius
        self.katonian3TextBox?.layer.cornerRadius = cornerRadius
        self.ramShipNextTextBox?.layer.cornerRadius = cornerRadius
        self.fetchKeyTextBox?.layer.cornerRadius = cornerRadius
        
        self.atTheRanch_4TextBox?.layer.cornerRadius = cornerRadius
        self.hapalStanceTextBox?.layer.cornerRadius = cornerRadius
        self.someSortOfMistake?.layer.cornerRadius = cornerRadius
        
        self.gettingShadySneakIntoAmbassadorHouseTextBox?.layer.cornerRadius = cornerRadius
        self.warMonger1TextBox?.layer.cornerRadius = cornerRadius
        self.chronoKnowsTheLayoutTextBox?.layer.cornerRadius = cornerRadius
        
        self.chapter5_2TextBox?.layer.cornerRadius = cornerRadius
        self.chapter5_7TextBox?.layer.cornerRadius = cornerRadius
        self.chapter6_7TextBox?.layer.cornerRadius = cornerRadius
        
        self.chapter6_7AmbassadorTextBox?.layer.cornerRadius = cornerRadius
        self.jigsUpChoiceTextBox?.layer.cornerRadius = cornerRadius
        self.doNotAskAboutCCCTextBox?.layer.cornerRadius = cornerRadius
        self.snackOrRunTextBox?.layer.cornerRadius = cornerRadius
        self.whatShouldGrowlicsEatTextBox?.layer.cornerRadius = cornerRadius
        self.chapter5_5TextBox?.layer.cornerRadius = cornerRadius
        self.chap3_3TextBox?.layer.cornerRadius = cornerRadius
        
        self.twoDiplomats2TextBox?.layer.cornerRadius = cornerRadius
        self.twoDiplomats4TextBox?.layer.cornerRadius = cornerRadius
        self.twoDiplomats5TextBox?.layer.cornerRadius = cornerRadius
        self.chapter6_2Ambassador?.layer.cornerRadius = cornerRadius
        
        self.twoDiplomats14TextBox?.layer.cornerRadius = cornerRadius
        self.hyperSleep0TextBox?.layer.cornerRadius = cornerRadius
        self.clog4TextBox?.layer.cornerRadius = cornerRadius
        self.itMustBeFateTextBox?.layer.cornerRadius = cornerRadius
        self.chap6_4TextBox?.layer.cornerRadius = cornerRadius
        self.raidOnCovarnius3Point5TextBox?.layer.cornerRadius = cornerRadius
        self.seriousTextbox?.layer.cornerRadius = cornerRadius
       
        
 
    }
    
    override func loadDecisionPointButton(button: UIButton?) {
        button?.layer.borderWidth = 2
        button?.layer.cornerRadius = 18
        button?.layer.backgroundColor = UIColor.lightText.cgColor
        button?.layer.borderColor = UIColor.lightGray.cgColor
        button?.setTitleColor(UIColor.black, for: .normal)
        button?.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        button?.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        button?.layer.shadowOpacity = 1.0
        button?.layer.shadowRadius = 0.0
    
    
    }
    

    
  //Text Boxes
   
    @IBOutlet weak var seriousTextbox: UITextView!
    @IBOutlet weak var fetchKeyTextBox: UITextView!
    @IBOutlet weak var ramShipNextTextBox: UITextView!
    @IBOutlet weak var intoTextBox: UITextView!
    @IBOutlet weak var snackOrRunTextBox: UITextView!
    @IBOutlet weak var turnBackTextBox: UITextView!
    @IBOutlet var noHomeworkButton: UIView!
    @IBOutlet weak var decisionButton: UIButton!
    @IBOutlet weak var dissectBrainButton: NavButton!
    @IBOutlet weak var chap2_4TextBox: UITextView!
    @IBOutlet weak var katonian3TextBox: UITextView!
    @IBOutlet weak var atTheRanch_4TextBox: UITextView!
    @IBOutlet weak var hapalStanceTextBox: UITextView!
    @IBOutlet weak var someSortOfMistake: UITextView!
    @IBOutlet weak var gettingShadySneakIntoAmbassadorHouseTextBox: UITextView!
    @IBOutlet weak var warMonger1TextBox: UITextView!
    @IBOutlet weak var chronoKnowsTheLayoutTextBox: UITextView!
    @IBOutlet weak var chapter5_2TextBox: UITextView!
    @IBOutlet weak var chapter5_7TextBox: UITextView!
    @IBOutlet weak var chapter6_2Ambassador: UITextView!
    @IBOutlet weak var chapter6_7TextBox: UITextView!
    @IBOutlet weak var chapter6_7AmbassadorTextBox: UITextView!
    @IBOutlet weak var jigsUpChoiceTextBox: UITextView!
    @IBOutlet weak var doNotAskAboutCCCTextBox: UITextView!
    @IBOutlet weak var whatShouldGrowlicsEatTextBox: UITextView!
    @IBOutlet weak var chapter5_5TextBox: UITextView!
    @IBOutlet weak var chap3_3TextBox: UITextView!
    @IBOutlet weak var twoDiplomats2TextBox: UITextView!
    @IBOutlet weak var twoDiplomats4TextBox: UITextView!
    @IBOutlet weak var twoDiplomats5TextBox: UITextView!
    @IBOutlet weak var twoDiplomats14TextBox: UITextView!
    @IBOutlet weak var hyperSleep0TextBox: UITextView!
    @IBOutlet weak var clog4TextBox: UITextView!
    @IBOutlet weak var itMustBeFateTextBox: UITextView!
   
    @IBOutlet weak var tellKingOrNotTextBox: UITextView!
    @IBOutlet weak var murkblurTextBox: UITextView!
    @IBOutlet weak var raidOnCovarnius3Point5TextBox: UITextView!
    @IBOutlet weak var chap6_4TextBox: UITextView!
    
    
  
    //Buttons
    
    override func loadDecisionPointButtons() {
        loadDecisionPointButton(button: self.ramShipButton)
        loadDecisionPointButton(button: self.notImportantButton)
        loadDecisionPointButton(button: self.keepThinkingButton)
        loadDecisionPointButton(button: self.seeTheSkyButton)
        loadDecisionPointButton(button: self.runAwayFromSpaceshipButton)
        loadDecisionPointButton(button: self.kayoOfferToRelax)
        loadDecisionPointButton(button: self.kayoIsSuspicious)
        loadDecisionPointButton(button: self.runQuickButton)
        loadDecisionPointButton(button: self.sneakThereButton)
        loadDecisionPointButton(button: self.murkblurButton)
        loadDecisionPointButton(button: self.skipTestButton)
        loadDecisionPointButton(button: self.noTellKingButton)
        loadDecisionPointButton(button: self.goodNewsKingButton)
        
        loadDecisionPointButton(button: self.sneakIntoCouncilChamberButton)
        loadDecisionPointButton(button: self.borrowFromCovarnianAmbassadorButton)
        
        loadDecisionPointButton(button: self.breakInButton)
        loadDecisionPointButton(button: self.thisIsGettingTooShadyButton)
        
        loadDecisionPointButton(button: self.theyAreViciousButton)
        loadDecisionPointButton(button: self.theyLookHungryButton)
        
        
        loadDecisionPointButton(button: self.sneakIntoCouncilChamberButton)
        loadDecisionPointButton(button: self.borrowFromCovarnianAmbassadorButton)
        
        loadDecisionPointButton(button: self.sneakIntoCouncilChamberButton)
        loadDecisionPointButton(button: self.borrowFromCovarnianAmbassadorButton)
        
        loadDecisionPointButton(button: self.stinkyMeatButton)
        loadDecisionPointButton(button: self.changeMyMindButton)
        loadDecisionPointButton(button: self.continueAsPlannedButton)
        
        loadDecisionPointButton(button: self.grossScalyFoodButton)
        
        loadDecisionPointButton(button: self.dessertButton)
        loadDecisionPointButton(button: self.userKeyCardToCreateDistractionButton)
        
        loadDecisionPointButton(button: self.korgleIsDistrctedEnoughButton)
        loadDecisionPointButton(button: self.stickToPlanButton)
        loadDecisionPointButton(button: self.betterClogTheToiletButton)
        
        loadDecisionPointButton(button: self.hyperSleepButton)
        loadDecisionPointButton(button: self.clogToiletButton)
        loadDecisionPointButton(button: self.antiGravityGunButton)
        
        loadDecisionPointButton(button: self.iceRayButton)
        loadDecisionPointButton(button: self.brokerForPeaceButton)
        loadDecisionPointButton(button: self.weHaveASecretWeaponButton)
        
        loadDecisionPointButton(button: self.takeKeyButton)
        loadDecisionPointButton(button: self.takeKeyTooRiskyButton)
        loadDecisionPointButton(button: self.callTheBluffMistakeButton)
        
        loadDecisionPointButton(button: self.heSeemsVerySeriousButton)
        loadDecisionPointButton(button: self.notWithoutMyLunaButton)
        loadDecisionPointButton(button: self.sensitiveMissionButton)
        
        loadDecisionPointButton(button: self.lookOutWindowButton)
        loadDecisionPointButton(button: self.checkUnderDoorButton)
        loadDecisionPointButton(button: self.hardSinisterianSteelButton)
        
        loadDecisionPointButton(button: self.haveLunaFetchTheKey)
        loadDecisionPointButton(button: self.wingItButton)
        loadDecisionPointButton(button: self.jigIsUpButton)
        
        loadDecisionPointButton(button: self.iAmAScientistButton)
        loadDecisionPointButton(button: self.notAScientistButton)
        loadDecisionPointButton(button: self.helpKayoWithHapalButton)
        
        loadDecisionPointButton(button: self.notYourProblemButton)
        loadDecisionPointButton(button: self.dontTrustSpaceCowboyButton)
        loadDecisionPointButton(button: self.trustSpaceCowboyButton)
        
        loadDecisionPointButton(button: self.takeMeBackToEarthButton)
        loadDecisionPointButton(button: self.onlyYouCanHelpButton)
        loadDecisionPointButton(button: self.goHomeFirstTimeButton)
        
        loadDecisionPointButton(button: self.turnBackFirstTimeButton)
        loadDecisionPointButton(button: self.sureIllHelp)
        loadDecisionPointButton(button: self.noWayDissectMyBrains)
        loadDecisionPointButton(button: self.warmongerButton)
        loadDecisionPointButton(button: self.weNeedToDoSomethingButton)
        
        loadDecisionPointButton(button: self.iJustWantToGoHomeButton)
        loadDecisionPointButton(button: self.neverGiveUpButton)
        
        loadDecisionPointButton(button: self.itsAGreatPlanButton)
        loadDecisionPointButton(button: self.iGiveUpSecondTimeButton)
        
        loadDecisionPointButton(button: self.sneakOntoSinisterianShipButton)
        loadDecisionPointButton(button: self.disguiseOurselvesButton)
        
        loadDecisionPointButton(button: self.CCCButton)
        loadDecisionPointButton(button: self.noTimeForQuestionsButton)
        loadDecisionPointButton(button: self.nextChapterRaidOnCovarniusButton)
        
        loadDecisionPointButton(button: self.nextChapterRamShipButton)
    }
    

    
    @IBOutlet weak var seeTheSkyButton: UIButton!
    @IBOutlet weak var runAwayFromSpaceshipButton: UIButton!
    @IBOutlet weak var nextChapterRaidOnCovarniusButton: UIButton!
    @IBOutlet weak var nextChapterRamShipButton: UIButton!
    @IBOutlet weak var noTimeForQuestionsButton: UIButton!
    @IBOutlet weak var CCCButton: UIButton!
    @IBOutlet weak var sneakIntoCouncilChamberButton: UIButton!
    @IBOutlet weak var borrowFromCovarnianAmbassadorButton: UIButton!
    @IBOutlet weak var breakInButton: UIButton!
    @IBOutlet weak var thisIsGettingTooShadyButton: UIButton!
    @IBOutlet weak var theyAreViciousButton: UIButton!
    @IBOutlet weak var theyLookHungryButton: UIButton!
    @IBOutlet weak var stinkyMeatButton: UIButton!
    @IBOutlet weak var grossScalyFoodButton: UIButton!
    @IBOutlet weak var dessertButton: UIButton!
    @IBOutlet weak var userKeyCardToCreateDistractionButton: UIButton!
    @IBOutlet weak var korgleIsDistrctedEnoughButton: UIButton!
    @IBOutlet weak var stickToPlanButton: UIButton!
    @IBOutlet weak var betterClogTheToiletButton: UIButton!
    @IBOutlet weak var hyperSleepButton: UIButton!
    @IBOutlet weak var clogToiletButton: UIButton!
    @IBOutlet weak var antiGravityGunButton: UIButton!
    @IBOutlet weak var iceRayButton: UIButton!
    @IBOutlet weak var brokerForPeaceButton: UIButton!
    @IBOutlet weak var weHaveASecretWeaponButton: UIButton!
    @IBOutlet weak var takeKeyButton: UIButton!
    @IBOutlet weak var takeKeyTooRiskyButton: UIButton!
    @IBOutlet weak var callTheBluffMistakeButton: UIButton!
    @IBOutlet weak var heSeemsVerySeriousButton: UIButton!
    @IBOutlet weak var notWithoutMyLunaButton: UIButton!
    @IBOutlet weak var sensitiveMissionButton: UIButton!
    @IBOutlet weak var lookOutWindowButton: UIButton!
    @IBOutlet weak var checkUnderDoorButton: UIButton!
    @IBOutlet weak var hardSinisterianSteelButton: UIButton!
    @IBOutlet weak var haveLunaFetchTheKey: UIButton!
    @IBOutlet weak var wingItButton: UIButton!
    @IBOutlet weak var jigIsUpButton: UIButton!
    @IBOutlet weak var iAmAScientistButton: UIButton!
    @IBOutlet weak var notAScientistButton: UIButton!
    @IBOutlet weak var helpKayoWithHapalButton: UIButton!
    @IBOutlet weak var notYourProblemButton: UIButton!
    @IBOutlet weak var dontTrustSpaceCowboyButton: UIButton!
    @IBOutlet weak var trustSpaceCowboyButton: UIButton!
    @IBOutlet weak var takeMeBackToEarthButton: UIButton!
    @IBOutlet weak var onlyYouCanHelpButton: UIButton!
    @IBOutlet weak var goHomeFirstTimeButton: UIButton!
    @IBOutlet weak var warmongerButton: UIButton!
    @IBOutlet weak var weNeedToDoSomethingButton: UIButton!
    @IBOutlet weak var turnBackFirstTimeButton: UIButton!
    @IBOutlet weak var iJustWantToGoHomeButton: UIButton!
    @IBOutlet weak var neverGiveUpButton: UIButton!
    @IBOutlet weak var sureIllHelp: UIButton!
    @IBOutlet weak var noWayDissectMyBrains: UIButton!
    @IBOutlet weak var kayoIsSuspicious: UIButton!
    @IBOutlet weak var kayoOfferToRelax: UIButton!
    @IBOutlet weak var iGiveUpSecondTimeButton: UIButton!
    @IBOutlet weak var itsAGreatPlanButton: UIButton!
    @IBOutlet weak var disguiseOurselvesButton: UIButton!
    @IBOutlet weak var sneakOntoSinisterianShipButton: UIButton!
    @IBOutlet weak var ramShipButton: UIButton!
    @IBOutlet weak var changeMyMindButton: UIButton!
    @IBOutlet weak var continueAsPlannedButton: UIButton!
    @IBOutlet weak var keepThinkingButton: UIButton!
    @IBOutlet weak var notImportantButton: UIButton!
    @IBOutlet weak var runQuickButton: UIButton!
    @IBOutlet weak var sneakThereButton: UIButton!
    @IBOutlet weak var murkblurButton: UIButton!
    @IBOutlet weak var skipTestButton: UIButton!
    @IBOutlet weak var goodNewsKingButton: UIButton!
    @IBOutlet weak var noTellKingButton: UIButton!
}
