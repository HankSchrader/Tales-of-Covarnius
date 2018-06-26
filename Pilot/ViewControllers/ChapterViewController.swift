//
//  ChapterViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 3/15/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class ChapterViewController: UIViewController {

    static let chapterVC = ChapterViewController()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.clear
        
        goToChapterSelectAction()
        let width = self.view.frame.size.width
        loadBorderColor()
        loadBorderWidth(borderWidth: 3.0)
        loadCornerRadius(cornerRadius: 15.0)
        loadTextBoxColor()
        loadDecisionPointButtons()
        
        self.yetAnotherDistraction1TextBox?.changeFontSizeByDevice(width: width)
        self.yetAnotherDistraction2TextBox?.changeFontSizeByDevice(width: width)
         self.chronoRemindsTextBox?.changeFontSizeByDevice(width: width)
        self.yetAnotherDistraction3TextBox?.changeFontSizeByDevice(width: width)
        self.runForItTheEnd?.changeFontSizeByDevice(width: width)
        self.chap2_0TextBox?.changeFontSizeByDevice(width: width)
        self.chap2_3TextBox?.changeFontSizeByDevice(width: width)
        self.chap2_1TextBox?.changeFontSizeByDevice(width: width)
        self.chap2_2TextBox?.changeFontSizeByDevice(width: width)
        self.chap2_3TextBox?.changeFontSizeByDevice(width: width)
        self.chap3_0?.changeFontSizeByDevice(width: width)
        self.chap3_1TextBox?.changeFontSizeByDevice(width: width)
        self.chap3_15TextBox?.changeFontSizeByDevice(width: width)
        self.chap3_2TextBox?.changeFontSizeByDevice(width: width)
        self.chap3_25TextBox?.changeFontSizeByDevice(width: width)
        self.katonian1_point5TextBox?.changeFontSizeByDevice(width: width)
        self.katonian1TextBox?.changeFontSizeByDevice(width: width)
        self.katonian2TextBox?.changeFontSizeByDevice(width: width)
        self.katonian2Point5TextBox?.changeFontSizeByDevice(width: width)
        self.at_the_ranch_run_choice_part_1TextBox?.changeFontSizeByDevice(width: width)
        self.at_the_ranch_run_choice_part_2TextBox?.changeFontSizeByDevice(width: width)
        self.at_the_ranch_run_choice_part_2Point5TextBox?.changeFontSizeByDevice(width: width)
        self.at_the_ranch_1TextBox?.changeFontSizeByDevice(width: width)
        self.at_the_ranch_2TextBox?.changeFontSizeByDevice(width: width)
        self.at_the_ranch_2Point5TextBox?.changeFontSizeByDevice(width: width)
        self.at_the_ranch_3TextBox?.changeFontSizeByDevice(width: width)
        self.noTrust_1TextBox?.changeFontSizeByDevice(width: width)
        self.noTrust1Point5TextBox?.changeFontSizeByDevice(width: width)
        self.at_the_ranch_3TextBox?.changeFontSizeByDevice(width: width)
        self.trust1TextBox?.changeFontSizeByDevice(width: width)
        self.trust1Point5TextBox?.changeFontSizeByDevice(width: width)
        self.hapalStance1TextBox?.changeFontSizeByDevice(width: width)
        self.letHapalDownTextBox?.changeFontSizeByDevice(width: width)
        self.letHapalDown2TextBox?.changeFontSizeByDevice(width: width)
        self.hapalRescue2AgainTextBox?.changeFontSizeByDevice(width: width)
        self.hapalRescue3TextBox?.changeFontSizeByDevice(width: width)
        self.hapalRescue4TextBox?.changeFontSizeByDevice(width: width)
        self.hapalRescueTextBox?.changeFontSizeByDevice(width: width)
        self.chap4_1TextBox?.changeFontSizeByDevice(width: width)
        self.chapt4_2TextBox?.changeFontSizeByDevice(width: width)
        self.chap4_3TextBox?.changeFontSizeByDevice(width: width)
        
        
        self.imNotAScientistPoint5TextBox?.changeFontSizeByDevice(width: width)
          self.youGoofedTextBox?.font = UIFont.boldSystemFont(ofSize: 18)
        self.youGoofedPoint5TextBox?.changeFontSizeByDevice(width: width)
        self.youGoofedTextBox?.changeFontSizeByDevice(width: width)
         self.youGoofedTextBox?.font = UIFont.boldSystemFont(ofSize: 18)
        self.chapter51Point5TextBox?.changeFontSizeByDevice(width: width)
        self.chapter5_1TextBox?.changeFontSizeByDevice(width: width)
        self.chapter5_3TextBox?.changeFontSizeByDevice(width: width)
        
        self.chapter5_4TextBox?.changeFontSizeByDevice(width: width)
        
        self.chapter5_4Point5TextBox?.changeFontSizeByDevice(width: width)
        self.chapter5Before5TextBox?.changeFontSizeByDevice(width: width)
        self.chapter5Before7TextBox?.changeFontSizeByDevice(width: width)
        
        self.chapter6_1TextBox?.changeFontSizeByDevice(width: width)
        self.Chapter6_1AmbassadorTextBox?.changeFontSizeByDevice(width: width)
        self.chapter6_1Point5TextBox?.changeFontSizeByDevice(width: width)
        
        self.chapter6_2TextBox?.changeFontSizeByDevice(width: width)
        self.chapter6_3TextBox?.changeFontSizeByDevice(width: width)
        self.chapter6_3Point5TextBox?.changeFontSizeByDevice(width: width)
        
        self.chapter6_3AmbassadorTextBox?.changeFontSizeByDevice(width: width)
        self.chapter6_4TextBox?.changeFontSizeByDevice(width: width)
        self.Chapter_6_4_AmbassadorTextBox?.changeFontSizeByDevice(width: width)
        
        self.chapter6_4Point5TextBox?.changeFontSizeByDevice(width: width)
        self.chapter6_5TextBox?.changeFontSizeByDevice(width: width)
        self.chapter6_5AmbassadorTextBox?.changeFontSizeByDevice(width: width)
        
        self.Chapter6_6AmbassadorTextBox?.changeFontSizeByDevice(width: width)
        self.chapter6_6Point5TextBox?.changeFontSizeByDevice(width: width)
        self.Chapter6_before7TextBox?.changeFontSizeByDevice(width: width)
        self.dessertTextBox?.changeFontSizeByDevice(width: width)

        self.goodGrowlicsTextBox?.changeFontSizeByDevice(width: width)
        self.TheyreViciousRunTextBox?.changeFontSizeByDevice(width: width)
        self.theyreViciousRunTextBox_1Point5TextBox?.changeFontSizeByDevice(width: width)
        
        self.theyreViciousRun_2TextBox?.changeFontSizeByDevice(width: width)
        self.theyreViciousRun_2Point5TextBox?.changeFontSizeByDevice(width: width)
        self.counciChamberSneakTextBox?.changeFontSizeByDevice(width: width)
        
        self.councilChamberSneak_1Point5?.changeFontSizeByDevice(width: width)
        self.chapter6_6TextBox?.changeFontSizeByDevice(width: width)
        self.CCCExplanationTextBox?.changeFontSizeByDevice(width: width)
        
        self.ramShipTextBox?.changeFontSizeByDevice(width: width)
        self.ramShip2TextBox?.changeFontSizeByDevice(width: width)
        self.ramShip2Point5TextBox?.changeFontSizeByDevice(width: width)
        
        
        self.fetchKey?.changeFontSizeByDevice(width: width)
        self.fetchKey2TextBox?.changeFontSizeByDevice(width: width)
        self.greenFizzTheEndTextBox?.changeFontSizeByDevice(width: width)
        
        self.JigsUpTextBox?.changeFontSizeByDevice(width: width)
        self.jigsUp1Point5TextBox?.changeFontSizeByDevice(width: width)
        self.yellowFizzTheEndTextBox?.changeFontSizeByDevice(width: width)
        
        self.heSeemsSeriousTextBox?.changeFontSizeByDevice(width: width)
        self.chapter5Before2TextBox?.changeFontSizeByDevice(width: width)
        self.TurnBackTheEnd?.changeFontSizeByDevice(width: width)
        
        self.neverKnowTheEnd?.changeFontSizeByDevice(width: width)
        self.neverGiveUpTextBox?.changeFontSizeByDevice(width: width)
        
        self.almostGiveUpTextBox?.changeFontSizeByDevice(width: width)
        self.checkWindowTextBox?.changeFontSizeByDevice(width: width)
        self.checkDoorTextBox?.changeFontSizeByDevice(width: width)
        
        self.twoDiplomats1TextBox?.changeFontSizeByDevice(width: width)
        self.twoDiplomats3TextBox?.changeFontSizeByDevice(width: width)
        self.noPeaceTextBox?.changeFontSizeByDevice(width: width)
        
        self.noPeace2TextBox?.changeFontSizeByDevice(width: width)
        self.twoDiplomats6TextBox?.changeFontSizeByDevice(width: width)
        self.iceRayTextBox?.changeFontSizeByDevice(width: width)
        
        self.twoDiplomats7TextBox?.changeFontSizeByDevice(width: width)
        self.twoDiplomats8TextBox?.changeFontSizeByDevice(width: width)
        self.twoDiplomats9TextBox?.changeFontSizeByDevice(width: width)
        
        self.twoDiplomats10TextBox?.changeFontSizeByDevice(width: width)
        self.twoDiplomats11TextBox?.changeFontSizeByDevice(width: width)
        self.twoDiplomats12TextBox?.changeFontSizeByDevice(width: width)
        
        self.twoDiplomats13TextBox?.changeFontSizeByDevice(width: width)
        self.clog1TextBox?.changeFontSizeByDevice(width: width)
        self.clog2TextBox?.changeFontSizeByDevice(width: width)
        
        self.clog3TextBox?.changeFontSizeByDevice(width: width)
        self.failedDistraction1TextBox?.changeFontSizeByDevice(width: width)
        self.failedDistraction2TextBox?.changeFontSizeByDevice(width: width)
        
        self.tookTheKeyTextBox?.changeFontSizeByDevice(width: width)
        self.noKeyTakenTextBox?.changeFontSizeByDevice(width: width)
        self.possibleButRisky?.changeFontSizeByDevice(width: width)
        
        self.raidOnCovarnius1TextBox?.changeFontSizeByDevice(width: width)
        self.raidOnCovarnius2TextBox?.changeFontSizeByDevice(width: width)
        self.raidOnCovarnius3TextBox?.changeFontSizeByDevice(width: width)
        
        
        self.raidOnCovarnius4TextBox?.changeFontSizeByDevice(width: width)
        self.raidOnCovarnius5TextBox?.changeFontSizeByDevice(width: width)
        self.raidOnCovarnius6TextBox?.changeFontSizeByDevice(width: width)
        
        
        self.raidOnCovarnius7TextBox?.changeFontSizeByDevice(width: width)
        self.raidOnCovarnius8TextBox?.changeFontSizeByDevice(width: width)
        self.raidOnCovarnius9TextBox?.changeFontSizeByDevice(width: width)
        self.raidOnCovarnius10TextBox?.changeFontSizeByDevice(width: width)
        
        
        self.raidOnCovarnius11TextBox?.changeFontSizeByDevice(width: width)
        self.raidOnCovarnius12TextBox?.changeFontSizeByDevice(width: width)
        self.raidOnCovarnius13TextBox?.changeFontSizeByDevice(width: width)
        
        self.riseAndShine1TextBox?.changeFontSizeByDevice(width: width)
        self.riseAndShine2TextBox?.changeFontSizeByDevice(width: width)
        self.riseAndShine3TextBox?.changeFontSizeByDevice(width: width)
        
        self.keepLunaGetSentToPrison?.changeFontSizeByDevice(width: width)
        
        
        
        self.riseAndShine4TextBox?.changeFontSizeByDevice(width: width)
        self.riseAndShine5TextBox?.changeFontSizeByDevice(width: width)
        self.ristAndShine6TextBox?.changeFontSizeByDevice(width: width)
        
        self.riseAndShine7TextBox?.changeFontSizeByDevice(width: width)
        self.riseAndShine8TextBox?.changeFontSizeByDevice(width: width)
        self.chapter3page2?.changeFontSizeByDevice(width: width)
        self.whichFizz?.changeFontSizeByDevice(width: width)
        
        self.IntroductionTextBox?.changeFontSizeByDevice(width: width)
        
        self.greenFoodTheEnd?.changeFontSizeByDevice(width: width)
        self.phaseOneCompleteTextBox?.changeFontSizeByDevice(width: width)
        
        self.yetAnotherDistraction1TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.yetAnotherDistraction2TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chronoRemindsTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.yetAnotherDistraction3TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.runForItTheEnd?.setContentOffset(CGPoint.zero, animated: true)
        self.chap2_0TextBox?.setContentOffset(CGPoint.zero, animated: true)
        
        self.chap2_3TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chap2_1TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chap2_2TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chap2_3TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chap3_0?.setContentOffset(CGPoint.zero, animated: true)
        self.chap3_1TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chap3_15TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chap3_2TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chap3_25TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.katonian1_point5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.katonian1TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.katonian2TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.katonian2Point5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.at_the_ranch_run_choice_part_1TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.at_the_ranch_run_choice_part_2TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.at_the_ranch_run_choice_part_2Point5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.at_the_ranch_1TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.at_the_ranch_2TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.at_the_ranch_2Point5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.at_the_ranch_3TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.noTrust_1TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.noTrust1Point5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.at_the_ranch_3TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.trust1TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.trust1Point5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.hapalStance1TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.letHapalDownTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.letHapalDown2TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.hapalRescue2AgainTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.hapalRescue3TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.hapalRescueTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.hapalRescue4TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chap4_1TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chapt4_2TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chap4_3TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.imNotAScientistPoint5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.youGoofedPoint5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.youGoofedTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chapter51Point5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chapter5_1TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chapter5_3TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chapter5_4TextBox?.setContentOffset(CGPoint.zero, animated: true)
        
        self.chapter5_4Point5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chapter5Before5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chapter5Before7TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chapter6_1TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.Chapter6_1AmbassadorTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chapter6_1Point5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chapter6_2TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chapter6_3TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chapter6_3Point5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chapter6_3AmbassadorTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chapter6_4TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.Chapter_6_4_AmbassadorTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chapter6_4Point5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chapter6_5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chapter6_5AmbassadorTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.Chapter6_6AmbassadorTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chapter6_6Point5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.Chapter6_before7TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.dessertTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.goodGrowlicsTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.TheyreViciousRunTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.theyreViciousRunTextBox_1Point5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.theyreViciousRun_2TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.theyreViciousRun_2Point5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.counciChamberSneakTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.councilChamberSneak_1Point5?.setContentOffset(CGPoint.zero, animated: true)
        self.chapter6_6TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.CCCExplanationTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.ramShipTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.ramShip2TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.ramShip2Point5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.fetchKey?.setContentOffset(CGPoint.zero, animated: true)
        self.fetchKey2TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.greenFizzTheEndTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.JigsUpTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.jigsUp1Point5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.yellowFizzTheEndTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.heSeemsSeriousTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chapter5Before2TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.TurnBackTheEnd?.setContentOffset(CGPoint.zero, animated: true)
        self.neverKnowTheEnd?.setContentOffset(CGPoint.zero, animated: true)
        self.neverGiveUpTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.almostGiveUpTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.checkWindowTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.checkDoorTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.twoDiplomats1TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.twoDiplomats3TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.noPeaceTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.noPeace2TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.twoDiplomats6TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.iceRayTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.twoDiplomats7TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.twoDiplomats8TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.twoDiplomats9TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.twoDiplomats10TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.twoDiplomats11TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.twoDiplomats12TextBox?.setContentOffset(CGPoint.zero, animated: true)
        
        self.keepLunaGetSentToPrison?.setContentOffset(CGPoint.zero, animated: true)
        self.twoDiplomats13TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.clog1TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.clog2TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.clog3TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.failedDistraction1TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.failedDistraction2TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.tookTheKeyTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.noKeyTakenTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.possibleButRisky?.setContentOffset(CGPoint.zero, animated: true)
        self.raidOnCovarnius1TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.raidOnCovarnius2TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.raidOnCovarnius3TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.raidOnCovarnius4TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.raidOnCovarnius5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.raidOnCovarnius6TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.raidOnCovarnius7TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.raidOnCovarnius8TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.raidOnCovarnius10TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.raidOnCovarnius11TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.raidOnCovarnius12TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.raidOnCovarnius13TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.raidOnCovarnius9TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.riseAndShine1TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.riseAndShine2TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.riseAndShine3TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.riseAndShine4TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.riseAndShine5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.ristAndShine6TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.riseAndShine7TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.riseAndShine8TextBox?.setContentOffset(CGPoint.zero, animated: true)
        
        self.chapter3page2?.setContentOffset(CGPoint.zero, animated: true)
        self.whichFizz?.setContentOffset(CGPoint.zero, animated: true)
        
        self.IntroductionTextBox?.setContentOffset(CGPoint.zero, animated: true)
        
        self.phaseOneCompleteTextBox?.setContentOffset(CGPoint.zero, animated: true)
        // Do any additional setup after loading the view.
    }


   /* override func viewWillDisappear(_ animated: Bool) {

        self.navigationController?.isNavigationBarHidden = true
    } */
    

    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let width = self.view.frame.size.width
        loadBorderColor()
        loadBorderWidth(borderWidth: 3.0)
        loadCornerRadius(cornerRadius: 15.0)
        loadTextBoxColor()
        loadDecisionPointButtons()
        
        self.yetAnotherDistraction1TextBox?.changeFontSizeByDevice(width: width)
        self.yetAnotherDistraction2TextBox?.changeFontSizeByDevice(width: width)
        self.chronoRemindsTextBox?.changeFontSizeByDevice(width: width)
        self.yetAnotherDistraction3TextBox?.changeFontSizeByDevice(width: width)
        self.runForItTheEnd?.changeFontSizeByDevice(width: width)
        self.chap2_0TextBox?.changeFontSizeByDevice(width: width)
        self.chap2_3TextBox?.changeFontSizeByDevice(width: width)
        self.chap2_1TextBox?.changeFontSizeByDevice(width: width)
        self.chap2_2TextBox?.changeFontSizeByDevice(width: width)
        self.chap2_3TextBox?.changeFontSizeByDevice(width: width)
        self.chap3_0?.changeFontSizeByDevice(width: width)
        self.chap3_1TextBox?.changeFontSizeByDevice(width: width)
        self.chap3_15TextBox?.changeFontSizeByDevice(width: width)
        self.chap3_2TextBox?.changeFontSizeByDevice(width: width)
        self.chap3_25TextBox?.changeFontSizeByDevice(width: width)
        self.katonian1_point5TextBox?.changeFontSizeByDevice(width: width)
        self.katonian1TextBox?.changeFontSizeByDevice(width: width)
        self.katonian2TextBox?.changeFontSizeByDevice(width: width)
        self.katonian2Point5TextBox?.changeFontSizeByDevice(width: width)
        self.at_the_ranch_run_choice_part_1TextBox?.changeFontSizeByDevice(width: width)
        self.at_the_ranch_run_choice_part_2TextBox?.changeFontSizeByDevice(width: width)
        self.at_the_ranch_run_choice_part_2Point5TextBox?.changeFontSizeByDevice(width: width)
        self.at_the_ranch_1TextBox?.changeFontSizeByDevice(width: width)
        self.at_the_ranch_2TextBox?.changeFontSizeByDevice(width: width)
        self.at_the_ranch_2Point5TextBox?.changeFontSizeByDevice(width: width)
        self.at_the_ranch_3TextBox?.changeFontSizeByDevice(width: width)
        self.noTrust_1TextBox?.changeFontSizeByDevice(width: width)
        self.noTrust1Point5TextBox?.changeFontSizeByDevice(width: width)
        self.at_the_ranch_3TextBox?.changeFontSizeByDevice(width: width)
        self.trust1TextBox?.changeFontSizeByDevice(width: width)
        self.trust1Point5TextBox?.changeFontSizeByDevice(width: width)
        self.hapalStance1TextBox?.changeFontSizeByDevice(width: width)
        self.letHapalDownTextBox?.changeFontSizeByDevice(width: width)
        self.letHapalDown2TextBox?.changeFontSizeByDevice(width: width)
        self.hapalRescue2AgainTextBox?.changeFontSizeByDevice(width: width)
        self.hapalRescue3TextBox?.changeFontSizeByDevice(width: width)
        self.hapalRescue4TextBox?.changeFontSizeByDevice(width: width)
        self.hapalRescueTextBox?.changeFontSizeByDevice(width: width)
        self.chap4_1TextBox?.changeFontSizeByDevice(width: width)
        self.chapt4_2TextBox?.changeFontSizeByDevice(width: width)
        self.chap4_3TextBox?.changeFontSizeByDevice(width: width)
        
        
        self.imNotAScientistPoint5TextBox?.changeFontSizeByDevice(width: width)
        self.youGoofedPoint5TextBox?.changeFontSizeByDevice(width: width)
        self.youGoofedTextBox?.changeFontSizeByDevice(width: width)
        
        self.chapter51Point5TextBox?.changeFontSizeByDevice(width: width)
        self.chapter5_1TextBox?.changeFontSizeByDevice(width: width)
        self.chapter5_3TextBox?.changeFontSizeByDevice(width: width)
        
        self.chapter5_4TextBox?.changeFontSizeByDevice(width: width)
        
        self.chapter5_4Point5TextBox?.changeFontSizeByDevice(width: width)
        self.chapter5Before5TextBox?.changeFontSizeByDevice(width: width)
        self.chapter5Before7TextBox?.changeFontSizeByDevice(width: width)
        
        self.chapter6_1TextBox?.changeFontSizeByDevice(width: width)
        self.Chapter6_1AmbassadorTextBox?.changeFontSizeByDevice(width: width)
        self.chapter6_1Point5TextBox?.changeFontSizeByDevice(width: width)
        
        self.chapter6_2TextBox?.changeFontSizeByDevice(width: width)
        self.chapter6_3TextBox?.changeFontSizeByDevice(width: width)
        self.chapter6_3Point5TextBox?.changeFontSizeByDevice(width: width)
        
        self.chapter6_3AmbassadorTextBox?.changeFontSizeByDevice(width: width)
        self.chapter6_4TextBox?.changeFontSizeByDevice(width: width)
        self.Chapter_6_4_AmbassadorTextBox?.changeFontSizeByDevice(width: width)
        
        self.chapter6_4Point5TextBox?.changeFontSizeByDevice(width: width)
        self.chapter6_5TextBox?.changeFontSizeByDevice(width: width)
        self.chapter6_5AmbassadorTextBox?.changeFontSizeByDevice(width: width)
        
        self.Chapter6_6AmbassadorTextBox?.changeFontSizeByDevice(width: width)
        self.chapter6_6Point5TextBox?.changeFontSizeByDevice(width: width)
        self.Chapter6_before7TextBox?.changeFontSizeByDevice(width: width)
        self.dessertTextBox?.changeFontSizeByDevice(width: width)

        self.goodGrowlicsTextBox?.changeFontSizeByDevice(width: width)
        self.TheyreViciousRunTextBox?.changeFontSizeByDevice(width: width)
        self.theyreViciousRunTextBox_1Point5TextBox?.changeFontSizeByDevice(width: width)
        
        self.theyreViciousRun_2TextBox?.changeFontSizeByDevice(width: width)
        self.theyreViciousRun_2Point5TextBox?.changeFontSizeByDevice(width: width)
        self.counciChamberSneakTextBox?.changeFontSizeByDevice(width: width)
        
        self.councilChamberSneak_1Point5?.changeFontSizeByDevice(width: width)
        self.chapter6_6TextBox?.changeFontSizeByDevice(width: width)
        self.CCCExplanationTextBox?.changeFontSizeByDevice(width: width)
        
        self.ramShipTextBox?.changeFontSizeByDevice(width: width)
        self.ramShip2TextBox?.changeFontSizeByDevice(width: width)
        self.ramShip2Point5TextBox?.changeFontSizeByDevice(width: width)
        
        
        self.fetchKey?.changeFontSizeByDevice(width: width)
        self.fetchKey2TextBox?.changeFontSizeByDevice(width: width)
        self.greenFizzTheEndTextBox?.changeFontSizeByDevice(width: width)
        
        self.JigsUpTextBox?.changeFontSizeByDevice(width: width)
        self.jigsUp1Point5TextBox?.changeFontSizeByDevice(width: width)
        self.yellowFizzTheEndTextBox?.changeFontSizeByDevice(width: width)
        
        self.heSeemsSeriousTextBox?.changeFontSizeByDevice(width: width)
        self.chapter5Before2TextBox?.changeFontSizeByDevice(width: width)
        self.TurnBackTheEnd?.changeFontSizeByDevice(width: width)
        
        self.neverKnowTheEnd?.changeFontSizeByDevice(width: width)
        self.neverGiveUpTextBox?.changeFontSizeByDevice(width: width)
        
        self.almostGiveUpTextBox?.changeFontSizeByDevice(width: width)
        self.checkWindowTextBox?.changeFontSizeByDevice(width: width)
        self.checkDoorTextBox?.changeFontSizeByDevice(width: width)
        
        self.twoDiplomats1TextBox?.changeFontSizeByDevice(width: width)
        self.twoDiplomats3TextBox?.changeFontSizeByDevice(width: width)
        self.noPeaceTextBox?.changeFontSizeByDevice(width: width)
        
        self.noPeace2TextBox?.changeFontSizeByDevice(width: width)
        self.twoDiplomats6TextBox?.changeFontSizeByDevice(width: width)
        self.iceRayTextBox?.changeFontSizeByDevice(width: width)
        
        self.twoDiplomats7TextBox?.changeFontSizeByDevice(width: width)
        self.twoDiplomats8TextBox?.changeFontSizeByDevice(width: width)
        self.twoDiplomats9TextBox?.changeFontSizeByDevice(width: width)
        
        self.twoDiplomats10TextBox?.changeFontSizeByDevice(width: width)
        self.twoDiplomats11TextBox?.changeFontSizeByDevice(width: width)
        self.twoDiplomats12TextBox?.changeFontSizeByDevice(width: width)
        
        self.twoDiplomats13TextBox?.changeFontSizeByDevice(width: width)
        self.clog1TextBox?.changeFontSizeByDevice(width: width)
        self.clog2TextBox?.changeFontSizeByDevice(width: width)
        
        self.clog3TextBox?.changeFontSizeByDevice(width: width)
        self.failedDistraction1TextBox?.changeFontSizeByDevice(width: width)
        self.failedDistraction2TextBox?.changeFontSizeByDevice(width: width)
        
        self.tookTheKeyTextBox?.changeFontSizeByDevice(width: width)
        self.noKeyTakenTextBox?.changeFontSizeByDevice(width: width)
        self.possibleButRisky?.changeFontSizeByDevice(width: width)
        
        self.raidOnCovarnius1TextBox?.changeFontSizeByDevice(width: width)
        self.raidOnCovarnius2TextBox?.changeFontSizeByDevice(width: width)
        self.raidOnCovarnius3TextBox?.changeFontSizeByDevice(width: width)
        
        
        self.raidOnCovarnius4TextBox?.changeFontSizeByDevice(width: width)
        self.raidOnCovarnius5TextBox?.changeFontSizeByDevice(width: width)
        self.raidOnCovarnius6TextBox?.changeFontSizeByDevice(width: width)
        
        
        self.raidOnCovarnius7TextBox?.changeFontSizeByDevice(width: width)
        self.raidOnCovarnius8TextBox?.changeFontSizeByDevice(width: width)
        self.raidOnCovarnius9TextBox?.changeFontSizeByDevice(width: width)
        self.raidOnCovarnius10TextBox?.changeFontSizeByDevice(width: width)
        
        
        self.raidOnCovarnius11TextBox?.changeFontSizeByDevice(width: width)
        self.raidOnCovarnius12TextBox?.changeFontSizeByDevice(width: width)
        self.raidOnCovarnius13TextBox?.changeFontSizeByDevice(width: width)
        
        self.riseAndShine1TextBox?.changeFontSizeByDevice(width: width)
        self.riseAndShine2TextBox?.changeFontSizeByDevice(width: width)
        self.riseAndShine3TextBox?.changeFontSizeByDevice(width: width)
        
        self.keepLunaGetSentToPrison?.changeFontSizeByDevice(width: width)
        
        
        
        self.riseAndShine4TextBox?.changeFontSizeByDevice(width: width)
        self.riseAndShine5TextBox?.changeFontSizeByDevice(width: width)
        self.ristAndShine6TextBox?.changeFontSizeByDevice(width: width)
        
        self.riseAndShine7TextBox?.changeFontSizeByDevice(width: width)
        self.riseAndShine8TextBox?.changeFontSizeByDevice(width: width)
        self.chapter3page2?.changeFontSizeByDevice(width: width)
        self.whichFizz?.changeFontSizeByDevice(width: width)
        
        self.IntroductionTextBox?.changeFontSizeByDevice(width: width)
        
        self.greenFoodTheEnd?.changeFontSizeByDevice(width: width)
        self.phaseOneCompleteTextBox?.changeFontSizeByDevice(width: width)
        self.yetAnotherDistraction3TextBox?.setContentOffset(CGPoint.zero, animated: true)
        
        self.runForItTheEnd?.setContentOffset(CGPoint.zero, animated: true)
        self.yetAnotherDistraction2TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chronoRemindsTextBox?.setContentOffset(CGPoint.zero, animated: true)
        
         self.yetAnotherDistraction1TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chap2_0TextBox?.setContentOffset(CGPoint.zero, animated: true)
        
        self.chap2_3TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chap2_1TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chap2_2TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chap2_3TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chap3_0?.setContentOffset(CGPoint.zero, animated: true)
        self.chap3_1TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chap3_15TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chap3_2TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chap3_25TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.katonian1_point5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.katonian1TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.katonian2TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.katonian2Point5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.at_the_ranch_run_choice_part_1TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.at_the_ranch_run_choice_part_2TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.at_the_ranch_run_choice_part_2Point5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.at_the_ranch_1TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.at_the_ranch_2TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.at_the_ranch_2Point5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.at_the_ranch_3TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.noTrust_1TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.noTrust1Point5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.at_the_ranch_3TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.trust1TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.trust1Point5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.hapalStance1TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.letHapalDownTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.letHapalDown2TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.hapalRescue2AgainTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.hapalRescue3TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.hapalRescueTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.hapalRescue4TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chap4_1TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chapt4_2TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chap4_3TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.imNotAScientistPoint5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.youGoofedPoint5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.youGoofedTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chapter51Point5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chapter5_1TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chapter5_3TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chapter5_4TextBox?.setContentOffset(CGPoint.zero, animated: true)
        
        self.chapter5_4Point5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chapter5Before5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chapter5Before7TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chapter6_1TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.Chapter6_1AmbassadorTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chapter6_1Point5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chapter6_2TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chapter6_3TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chapter6_3Point5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chapter6_3AmbassadorTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chapter6_4TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.Chapter_6_4_AmbassadorTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chapter6_4Point5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chapter6_5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chapter6_5AmbassadorTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.Chapter6_6AmbassadorTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chapter6_6Point5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.Chapter6_before7TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.dessertTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.goodGrowlicsTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.TheyreViciousRunTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.theyreViciousRunTextBox_1Point5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.theyreViciousRun_2TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.theyreViciousRun_2Point5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.counciChamberSneakTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.councilChamberSneak_1Point5?.setContentOffset(CGPoint.zero, animated: true)
        self.chapter6_6TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.CCCExplanationTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.ramShipTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.ramShip2TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.ramShip2Point5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.fetchKey?.setContentOffset(CGPoint.zero, animated: true)
        self.fetchKey2TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.greenFizzTheEndTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.JigsUpTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.jigsUp1Point5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.yellowFizzTheEndTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.heSeemsSeriousTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.chapter5Before2TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.TurnBackTheEnd?.setContentOffset(CGPoint.zero, animated: true)
        self.neverKnowTheEnd?.setContentOffset(CGPoint.zero, animated: true)
        self.neverGiveUpTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.almostGiveUpTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.checkWindowTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.checkDoorTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.twoDiplomats1TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.twoDiplomats3TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.noPeaceTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.noPeace2TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.twoDiplomats6TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.iceRayTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.twoDiplomats7TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.twoDiplomats8TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.twoDiplomats9TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.twoDiplomats10TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.twoDiplomats11TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.twoDiplomats12TextBox?.setContentOffset(CGPoint.zero, animated: true)
        
        self.keepLunaGetSentToPrison?.setContentOffset(CGPoint.zero, animated: true)
        self.twoDiplomats13TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.clog1TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.clog2TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.clog3TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.failedDistraction1TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.failedDistraction2TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.tookTheKeyTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.noKeyTakenTextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.possibleButRisky?.setContentOffset(CGPoint.zero, animated: true)
        self.raidOnCovarnius1TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.raidOnCovarnius2TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.raidOnCovarnius3TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.raidOnCovarnius4TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.raidOnCovarnius5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.raidOnCovarnius6TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.raidOnCovarnius7TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.raidOnCovarnius8TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.raidOnCovarnius10TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.raidOnCovarnius11TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.raidOnCovarnius12TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.raidOnCovarnius13TextBox?.setContentOffset(CGPoint.zero, animated: true)
         self.raidOnCovarnius9TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.riseAndShine1TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.riseAndShine2TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.riseAndShine3TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.riseAndShine4TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.riseAndShine5TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.ristAndShine6TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.riseAndShine7TextBox?.setContentOffset(CGPoint.zero, animated: true)
        self.riseAndShine8TextBox?.setContentOffset(CGPoint.zero, animated: true)
        
        self.chapter3page2?.setContentOffset(CGPoint.zero, animated: true)
        self.whichFizz?.setContentOffset(CGPoint.zero, animated: true)
        
        self.IntroductionTextBox?.setContentOffset(CGPoint.zero, animated: true)
        
        self.phaseOneCompleteTextBox?.setContentOffset(CGPoint.zero, animated: true)
    }
    

    
    func goToChapterSelectAction() {
        let button = NavButton()
       /* // let button = CustomButton(value: 100) // also works
        button.setTitle(nil, for: .normal)
        // auto layout
        // button.translatesAutoresizingMaskIntoConstraints = false */
        button.frame = CGRect(x: -100, y: 30, width: 300, height: 40)
        view.addSubview(button)
        button.addTarget(self, action: #selector(goToChapterSelect(_:)), for:
            UIControlEvents.touchUpInside)
        
    }

 /*   @objc func handleMore(sender: UIButton?)  {
        chapterSelectLauncher?.showChapters(sender: sender)
    }*/
    
    
    @IBAction func goToChapterSelect(_ sender: Any?) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "Chapter Select")
        self.show(vc, sender: self)
    }
    
    
    @IBOutlet weak var chap2_0TextBox: UITextView!
    @IBOutlet weak var chap2_1TextBox: UITextView!
    @IBOutlet weak var chap2_2TextBox: UITextView!
    @IBOutlet weak var chap2_3TextBox: UITextView!
    @IBOutlet weak var chap3_0: UITextView!
    @IBOutlet weak var chap3_1TextBox: UITextView!
    @IBOutlet weak var chap3_15TextBox: UITextView! //Not 15. 1.5
    @IBOutlet weak var chap3_2TextBox: UITextView!
    @IBOutlet weak var chap3_25TextBox: UITextView! //Not 25 2.5
    @IBOutlet weak var katonian1_point5TextBox: UITextView!
    @IBOutlet weak var katonian1TextBox: myTextView!
    @IBOutlet weak var katonian2TextBox: myTextView!
    @IBOutlet weak var katonian2Point5TextBox: myTextView!
    @IBOutlet weak var at_the_ranch_run_choice_part_1TextBox: UITextView!
    @IBOutlet weak var at_the_ranch_run_choice_part_2TextBox: UITextView!
    @IBOutlet weak var at_the_ranch_run_choice_part_2Point5TextBox: UITextView!
    @IBOutlet weak var at_the_ranch_1TextBox: UITextView!
    @IBOutlet weak var at_the_ranch_2TextBox: UITextView!
    @IBOutlet weak var at_the_ranch_2Point5TextBox: UITextView!
    @IBOutlet weak var at_the_ranch_3TextBox: UITextView!
    @IBOutlet weak var noTrust_1TextBox: UITextView!
    @IBOutlet weak var noTrust1Point5TextBox: UITextView!
    @IBOutlet weak var trust1TextBox: UITextView!
    @IBOutlet weak var trust1Point5TextBox: UITextView!
    @IBOutlet weak var hapalStance1TextBox: UITextView!
    @IBOutlet weak var letHapalDownTextBox: UITextView!
    @IBOutlet weak var letHapalDown2TextBox: UITextView!
    @IBOutlet weak var hapalRescueTextBox: UITextView!
    @IBOutlet weak var hapalRescue2TextBox: UITextView!
    @IBOutlet weak var hapalRescue2AgainTextBox: UITextView!
    @IBOutlet weak var hapalRescue3TextBox: UITextView!
    @IBOutlet weak var hapalRescue4TextBox: UITextView!
    @IBOutlet weak var chap4_1TextBox: UITextView!
    @IBOutlet weak var chapt4_2TextBox: UITextView!
    @IBOutlet weak var chap4_3TextBox: UITextView!
    @IBOutlet weak var imNotAScientistPoint5TextBox: UITextView!
    @IBOutlet weak var youGoofedPoint5TextBox: UITextView!
    @IBOutlet weak var youGoofedTextBox: UITextView!
    @IBOutlet weak var chapter51Point5TextBox: UITextView!
    @IBOutlet weak var chapter5_1TextBox: UITextView!
    @IBOutlet weak var phaseOneCompleteTextBox: UITextView!
    
    @IBOutlet weak var chapter5_3TextBox: UITextView!
    @IBOutlet weak var chapter5_4TextBox: UITextView!
    @IBOutlet weak var chapter5_4Point5TextBox: UITextView!
    @IBOutlet weak var chapter5Before5TextBox: UITextView!
    @IBOutlet weak var chapter5Before7TextBox: UITextView!
    @IBOutlet weak var chapter6_1TextBox: UITextView!
    @IBOutlet weak var Chapter6_1AmbassadorTextBox: UITextView!
    @IBOutlet weak var chapter6_1Point5TextBox: UITextView!
    @IBOutlet weak var chapter6_2TextBox: UITextView!
    @IBOutlet weak var chapter6_3TextBox: UITextView!
    @IBOutlet weak var chapter6_3Point5TextBox: UITextView!
    @IBOutlet weak var chapter6_3AmbassadorTextBox: UITextView!
    @IBOutlet weak var chapter6_4TextBox: UITextView!
    @IBOutlet weak var Chapter_6_4_AmbassadorTextBox: UITextView!
    @IBOutlet weak var chapter6_4Point5TextBox: UITextView!
    @IBOutlet weak var chapter6_5TextBox: UITextView!
    @IBOutlet weak var chapter6_5AmbassadorTextBox: UITextView!
    @IBOutlet weak var Chapter6_6AmbassadorTextBox: UITextView!
    @IBOutlet weak var chapter6_6Point5TextBox: UITextView!
    @IBOutlet weak var Chapter6_before7TextBox: UITextView!
    @IBOutlet weak var goodGrowlicsTextBox: UITextView!
    @IBOutlet weak var TheyreViciousRunTextBox: UITextView!
    @IBOutlet weak var theyreViciousRunTextBox_1Point5TextBox: UITextView!
    @IBOutlet weak var theyreViciousRun_2TextBox: UITextView!
    @IBOutlet weak var theyreViciousRun_2Point5TextBox: UITextView!
    @IBOutlet weak var counciChamberSneakTextBox: UITextView!
    @IBOutlet weak var councilChamberSneak_1Point5: UITextView!
    @IBOutlet weak var chapter6_6TextBox: UITextView!
    @IBOutlet weak var CCCExplanationTextBox: UITextView!
    @IBOutlet weak var keepLunaGetSentToPrison: UITextView!
    @IBOutlet weak var ramShipTextBox: UITextView!
    @IBOutlet weak var ramShip2TextBox: UITextView!
    @IBOutlet weak var ramShip2Point5TextBox: UITextView!
    @IBOutlet weak var fetchKey: UITextView!
    @IBOutlet weak var fetchKey2TextBox: UITextView!
    @IBOutlet weak var greenFizzTheEndTextBox: UITextView!
    @IBOutlet weak var JigsUpTextBox: UITextView!
    @IBOutlet weak var jigsUp1Point5TextBox: UITextView!
    @IBOutlet weak var yellowFizzTheEndTextBox: UITextView!
    @IBOutlet weak var heSeemsSeriousTextBox: UITextView!
    @IBOutlet weak var chapter5Before2TextBox: UITextView!
    @IBOutlet weak var TurnBackTheEnd: UITextView!
    @IBOutlet weak var neverKnowTheEnd: UITextView!
    @IBOutlet weak var neverGiveUpTextBox: UITextView!
    @IBOutlet weak var almostGiveUpTextBox: UITextView!
    @IBOutlet weak var checkWindowTextBox: UITextView!
    @IBOutlet weak var checkDoorTextBox: UITextView!
    @IBOutlet weak var twoDiplomats1TextBox: UITextView!
    @IBOutlet weak var twoDiplomats3TextBox: UITextView!
    @IBOutlet weak var noPeaceTextBox: UITextView!
    @IBOutlet weak var noPeace2TextBox: UITextView!
    @IBOutlet weak var twoDiplomats6TextBox: UITextView!
    @IBOutlet weak var iceRayTextBox: UITextView!
    @IBOutlet weak var twoDiplomats7TextBox: UITextView!
    @IBOutlet weak var twoDiplomats8TextBox: UITextView!
    @IBOutlet weak var twoDiplomats9TextBox: UITextView!
    @IBOutlet weak var twoDiplomats10TextBox: UITextView!
    @IBOutlet weak var twoDiplomats11TextBox: UITextView!
    @IBOutlet weak var twoDiplomats12TextBox: UITextView!
    @IBOutlet weak var twoDiplomats13TextBox: UITextView!
    @IBOutlet weak var clog1TextBox: UITextView!
    @IBOutlet weak var clog2TextBox: UITextView!
    @IBOutlet weak var clog3TextBox: UITextView!
    @IBOutlet weak var failedDistraction1TextBox: UITextView!
    @IBOutlet weak var dessertTextBox: UITextView!
    @IBOutlet weak var failedDistraction2TextBox: UITextView!
    @IBOutlet weak var tookTheKeyTextBox: UITextView!
    @IBOutlet weak var noKeyTakenTextBox: UITextView!
    @IBOutlet weak var possibleButRisky: UITextView!
    @IBOutlet weak var raidOnCovarnius1TextBox: UITextView!
    @IBOutlet weak var raidOnCovarnius2TextBox: UITextView!
    @IBOutlet weak var raidOnCovarnius3TextBox: UITextView!
    @IBOutlet weak var raidOnCovarnius4TextBox: UITextView!
    @IBOutlet weak var raidOnCovarnius5TextBox: UITextView!
    @IBOutlet weak var raidOnCovarnius6TextBox: UITextView!
    @IBOutlet weak var raidOnCovarnius7TextBox: UITextView!
    @IBOutlet weak var raidOnCovarnius8TextBox: UITextView!
    @IBOutlet weak var raidOnCovarnius9TextBox: UITextView!
    @IBOutlet weak var raidOnCovarnius10TextBox: UITextView!
    @IBOutlet weak var raidOnCovarnius11TextBox: UITextView!
    @IBOutlet weak var raidOnCovarnius12TextBox: UITextView!
    @IBOutlet weak var raidOnCovarnius13TextBox: UITextView!
    @IBOutlet weak var riseAndShine1TextBox: UITextView!
    @IBOutlet weak var riseAndShine2TextBox: UITextView!
    @IBOutlet weak var riseAndShine3TextBox: UITextView!
    @IBOutlet weak var riseAndShine4TextBox: UITextView!
    @IBOutlet weak var riseAndShine5TextBox: UITextView!
    @IBOutlet weak var ristAndShine6TextBox: UITextView!
    @IBOutlet weak var riseAndShine7TextBox: UITextView!
    @IBOutlet weak var riseAndShine8TextBox: UITextView!
    @IBOutlet weak var chapter3page2: UITextView!
    @IBOutlet weak var whichFizz: UITextView!
    @IBOutlet weak var IntroductionTextBox: myTextView!
    @IBOutlet weak var yetAnotherDistraction1TextBox: UITextView!
    @IBOutlet weak var yetAnotherDistraction2TextBox: UITextView!
    @IBOutlet weak var yetAnotherDistraction3TextBox: UITextView!
    @IBOutlet weak var runForItTheEnd: UITextView!
    
    @IBOutlet weak var chronoRemindsTextBox: UITextView!
    
    @IBOutlet weak var greenFoodTheEnd: UITextView!
    // MARK: Begin button decorations.
    
    func loadCornerRadius(cornerRadius: CGFloat!) {
        self.yetAnotherDistraction1TextBox?.layer.cornerRadius = cornerRadius
        self.yetAnotherDistraction2TextBox?.layer.cornerRadius = cornerRadius
        self.chronoRemindsTextBox?.layer.cornerRadius = cornerRadius
        self.yetAnotherDistraction3TextBox?.layer.cornerRadius = cornerRadius
        self.runForItTheEnd?.layer.cornerRadius = cornerRadius
        self.chap2_0TextBox?.layer.cornerRadius = cornerRadius
        
        self.chap2_3TextBox?.layer.cornerRadius = cornerRadius
        self.chap2_1TextBox?.layer.cornerRadius = cornerRadius
        self.chap2_2TextBox?.layer.cornerRadius = cornerRadius
        self.chap2_3TextBox?.layer.cornerRadius = cornerRadius
        self.chap3_0?.layer.cornerRadius = cornerRadius
        self.chap3_1TextBox?.layer.cornerRadius = cornerRadius
        self.chap3_15TextBox?.layer.cornerRadius = cornerRadius
        self.chap3_2TextBox?.layer.cornerRadius = cornerRadius
        self.chap3_25TextBox?.layer.cornerRadius = cornerRadius
        self.katonian1_point5TextBox?.layer.cornerRadius = cornerRadius
        self.katonian1TextBox?.layer.cornerRadius = cornerRadius
        self.katonian2TextBox?.layer.cornerRadius = cornerRadius
        self.katonian2Point5TextBox?.layer.cornerRadius = cornerRadius
        self.at_the_ranch_run_choice_part_1TextBox?.layer.cornerRadius = cornerRadius
        self.at_the_ranch_run_choice_part_2TextBox?.layer.cornerRadius = cornerRadius
        self.at_the_ranch_run_choice_part_2Point5TextBox?.layer.cornerRadius = cornerRadius
        self.at_the_ranch_1TextBox?.layer.cornerRadius = cornerRadius
        self.at_the_ranch_2TextBox?.layer.cornerRadius = cornerRadius
        self.at_the_ranch_2Point5TextBox?.layer.cornerRadius = cornerRadius
        self.at_the_ranch_3TextBox?.layer.cornerRadius = cornerRadius
        self.noTrust_1TextBox?.layer.cornerRadius = cornerRadius
        self.noTrust1Point5TextBox?.layer.cornerRadius = cornerRadius
        self.at_the_ranch_3TextBox?.layer.cornerRadius = cornerRadius
        self.trust1TextBox?.layer.cornerRadius = cornerRadius
        self.trust1Point5TextBox?.layer.cornerRadius = cornerRadius
        self.hapalStance1TextBox?.layer.cornerRadius = cornerRadius
        self.letHapalDownTextBox?.layer.cornerRadius = cornerRadius
        self.letHapalDown2TextBox?.layer.cornerRadius = cornerRadius
        self.hapalRescue2AgainTextBox?.layer.cornerRadius = cornerRadius
        self.hapalRescue3TextBox?.layer.cornerRadius = cornerRadius
        self.hapalRescueTextBox?.layer.cornerRadius = cornerRadius
        self.hapalRescue4TextBox?.layer.cornerRadius = cornerRadius
        self.chap4_1TextBox?.layer.cornerRadius = cornerRadius
        self.chapt4_2TextBox?.layer.cornerRadius = cornerRadius
        self.chap4_3TextBox?.layer.cornerRadius = cornerRadius
        self.imNotAScientistPoint5TextBox?.layer.cornerRadius = cornerRadius
        self.youGoofedPoint5TextBox?.layer.cornerRadius = cornerRadius
        self.youGoofedTextBox?.layer.cornerRadius = cornerRadius
        self.chapter51Point5TextBox?.layer.cornerRadius = cornerRadius
        self.chapter5_1TextBox?.layer.cornerRadius = cornerRadius
        self.chapter5_3TextBox?.layer.cornerRadius = cornerRadius
        self.chapter5_4TextBox?.layer.cornerRadius = cornerRadius
        self.chapter5_4Point5TextBox?.layer.cornerRadius = cornerRadius
        self.chapter5Before5TextBox?.layer.cornerRadius = cornerRadius
        self.chapter5Before7TextBox?.layer.cornerRadius = cornerRadius
        self.chapter6_1TextBox?.layer.cornerRadius = cornerRadius
        self.Chapter6_1AmbassadorTextBox?.layer.cornerRadius = cornerRadius
        self.chapter6_1Point5TextBox?.layer.cornerRadius = cornerRadius
        self.chapter6_2TextBox?.layer.cornerRadius = cornerRadius
        self.chapter6_3TextBox?.layer.cornerRadius = cornerRadius
        self.chapter6_3Point5TextBox?.layer.cornerRadius = cornerRadius
        self.chapter6_3AmbassadorTextBox?.layer.cornerRadius = cornerRadius
        self.chapter6_4TextBox?.layer.cornerRadius = cornerRadius
        self.Chapter_6_4_AmbassadorTextBox?.layer.cornerRadius = cornerRadius
        self.chapter6_4Point5TextBox?.layer.cornerRadius = cornerRadius
        self.chapter6_5TextBox?.layer.cornerRadius = cornerRadius
        self.chapter6_5AmbassadorTextBox?.layer.cornerRadius = cornerRadius
        self.Chapter6_6AmbassadorTextBox?.layer.cornerRadius = cornerRadius
        self.chapter6_6Point5TextBox?.layer.cornerRadius = cornerRadius
        
        self.Chapter6_before7TextBox?.layer.cornerRadius = cornerRadius
        self.dessertTextBox?.layer.cornerRadius = cornerRadius
        self.goodGrowlicsTextBox?.layer.cornerRadius = cornerRadius
        self.TheyreViciousRunTextBox?.layer.cornerRadius = cornerRadius
        self.theyreViciousRunTextBox_1Point5TextBox?.layer.cornerRadius = cornerRadius
        self.theyreViciousRun_2TextBox?.layer.cornerRadius = cornerRadius
        self.theyreViciousRun_2Point5TextBox?.layer.cornerRadius = cornerRadius
        self.counciChamberSneakTextBox?.layer.cornerRadius = cornerRadius
        self.councilChamberSneak_1Point5?.layer.cornerRadius = cornerRadius
        self.chapter6_6TextBox?.layer.cornerRadius = cornerRadius
        self.CCCExplanationTextBox?.layer.cornerRadius = cornerRadius
        self.ramShipTextBox?.layer.cornerRadius = cornerRadius
        self.ramShip2TextBox?.layer.cornerRadius = cornerRadius
        self.ramShip2Point5TextBox?.layer.cornerRadius = cornerRadius
        self.fetchKey?.layer.cornerRadius = cornerRadius
        self.fetchKey2TextBox?.layer.cornerRadius = cornerRadius
        self.greenFizzTheEndTextBox?.layer.cornerRadius = cornerRadius
        
        self.JigsUpTextBox?.layer.cornerRadius = cornerRadius
        self.jigsUp1Point5TextBox?.layer.cornerRadius = cornerRadius
        self.yellowFizzTheEndTextBox?.layer.cornerRadius = cornerRadius
        
        self.heSeemsSeriousTextBox?.layer.cornerRadius = cornerRadius
        self.chapter5Before2TextBox?.layer.cornerRadius = cornerRadius
        self.TurnBackTheEnd?.layer.cornerRadius = cornerRadius
        
        self.neverKnowTheEnd?.layer.cornerRadius = cornerRadius
        self.neverGiveUpTextBox?.layer.cornerRadius = cornerRadius
        
        self.almostGiveUpTextBox?.layer.cornerRadius = cornerRadius
        self.checkWindowTextBox?.layer.cornerRadius = cornerRadius
        self.checkDoorTextBox?.layer.cornerRadius = cornerRadius
        
        self.twoDiplomats1TextBox?.layer.cornerRadius = cornerRadius
        self.twoDiplomats3TextBox?.layer.cornerRadius = cornerRadius
        self.noPeaceTextBox?.layer.cornerRadius = cornerRadius
        self.noPeace2TextBox?.layer.cornerRadius = cornerRadius
        self.twoDiplomats6TextBox?.layer.cornerRadius = cornerRadius
        self.iceRayTextBox?.layer.cornerRadius = cornerRadius
        self.twoDiplomats7TextBox?.layer.cornerRadius = cornerRadius
        self.twoDiplomats8TextBox?.layer.cornerRadius = cornerRadius
        self.twoDiplomats9TextBox?.layer.cornerRadius = cornerRadius
        self.twoDiplomats10TextBox?.layer.cornerRadius = cornerRadius
        self.twoDiplomats11TextBox?.layer.cornerRadius = cornerRadius
        self.twoDiplomats12TextBox?.layer.cornerRadius = cornerRadius
        self.twoDiplomats13TextBox?.layer.cornerRadius = cornerRadius
        self.clog1TextBox?.layer.cornerRadius = cornerRadius
        self.clog2TextBox?.layer.cornerRadius = cornerRadius
        self.clog3TextBox?.layer.cornerRadius = cornerRadius
        self.failedDistraction1TextBox?.layer.cornerRadius = cornerRadius
        self.failedDistraction2TextBox?.layer.cornerRadius = cornerRadius
        self.tookTheKeyTextBox?.layer.cornerRadius = cornerRadius
        self.noKeyTakenTextBox?.layer.cornerRadius = cornerRadius
        self.possibleButRisky?.layer.cornerRadius = cornerRadius
        self.raidOnCovarnius1TextBox?.layer.cornerRadius = cornerRadius
        self.raidOnCovarnius2TextBox?.layer.cornerRadius = cornerRadius
        self.raidOnCovarnius3TextBox?.layer.cornerRadius = cornerRadius
        self.raidOnCovarnius4TextBox?.layer.cornerRadius = cornerRadius
        self.raidOnCovarnius5TextBox?.layer.cornerRadius = cornerRadius
        self.raidOnCovarnius6TextBox?.layer.cornerRadius = cornerRadius
        self.raidOnCovarnius7TextBox?.layer.cornerRadius = cornerRadius
        self.raidOnCovarnius8TextBox?.layer.cornerRadius = cornerRadius
        self.raidOnCovarnius9TextBox?.layer.cornerRadius = cornerRadius
        self.raidOnCovarnius10TextBox?.layer.cornerRadius = cornerRadius
        self.raidOnCovarnius11TextBox?.layer.cornerRadius = cornerRadius
        self.raidOnCovarnius12TextBox?.layer.cornerRadius = cornerRadius
        self.raidOnCovarnius13TextBox?.layer.cornerRadius = cornerRadius
        self.riseAndShine1TextBox?.layer.cornerRadius = cornerRadius
        self.riseAndShine2TextBox?.layer.cornerRadius = cornerRadius
        self.riseAndShine3TextBox?.layer.cornerRadius = cornerRadius
        self.keepLunaGetSentToPrison?.layer.cornerRadius = cornerRadius
        self.riseAndShine4TextBox?.layer.cornerRadius = cornerRadius
        self.riseAndShine5TextBox?.layer.cornerRadius = cornerRadius
        self.ristAndShine6TextBox?.layer.cornerRadius = cornerRadius
        self.riseAndShine7TextBox?.layer.cornerRadius = cornerRadius
        self.riseAndShine8TextBox?.layer.cornerRadius = cornerRadius
        self.chapter3page2?.layer.cornerRadius = cornerRadius
        self.whichFizz?.layer.cornerRadius = cornerRadius
        self.IntroductionTextBox?.layer.cornerRadius = cornerRadius

        self.greenFoodTheEnd?.layer.cornerRadius = cornerRadius
        self.phaseOneCompleteTextBox?.layer.cornerRadius = cornerRadius
        
       
        
    }
    
    func loadTextBoxColor() {
        self.yetAnotherDistraction3TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.runForItTheEnd?.layer.backgroundColor = UIColor.lightText.cgColor
        self.yetAnotherDistraction2TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.chronoRemindsTextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        
        self.yetAnotherDistraction1TextBox?.layer.backgroundColor = UIColor.lightText.cgColor

        self.chap2_0TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        
        self.chap2_3TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.chap2_1TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.chap2_2TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.chap2_3TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.chap3_0?.layer.backgroundColor = UIColor.lightText.cgColor
        self.chap3_1TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.chap3_15TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.chap3_2TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.chap3_25TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.katonian1_point5TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.katonian1TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.katonian2TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.katonian2Point5TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.at_the_ranch_run_choice_part_1TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.at_the_ranch_run_choice_part_2TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.at_the_ranch_run_choice_part_2Point5TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.at_the_ranch_1TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.at_the_ranch_2TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.at_the_ranch_2Point5TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.at_the_ranch_3TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.noTrust_1TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.noTrust1Point5TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.at_the_ranch_3TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.trust1TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.trust1Point5TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.hapalStance1TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.letHapalDownTextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.letHapalDown2TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.hapalRescue2AgainTextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.hapalRescue3TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.hapalRescueTextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.hapalRescue4TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.chap4_1TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.chap4_1TextBox?.textColor = UIColor.black
        self.chapt4_2TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.chap4_3TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.imNotAScientistPoint5TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.youGoofedPoint5TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.youGoofedTextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.chapter51Point5TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.chapter5_1TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.chapter5_3TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.chapter5_4TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.chapter5_4Point5TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.chapter5Before5TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.chapter5Before7TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.chapter6_1TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.Chapter6_1AmbassadorTextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.chapter6_1Point5TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.chapter6_2TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.chapter6_3TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.chapter6_3Point5TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.chapter6_3AmbassadorTextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.chapter6_4TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.Chapter_6_4_AmbassadorTextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.chapter6_4Point5TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.chapter6_5TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.chapter6_5AmbassadorTextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.Chapter6_6AmbassadorTextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.chapter6_6Point5TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.Chapter6_before7TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.dessertTextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.goodGrowlicsTextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.TheyreViciousRunTextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.theyreViciousRunTextBox_1Point5TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.theyreViciousRun_2TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.theyreViciousRun_2Point5TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.counciChamberSneakTextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.councilChamberSneak_1Point5?.layer.backgroundColor = UIColor.lightText.cgColor
        self.chapter6_6TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.CCCExplanationTextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.ramShipTextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.ramShip2TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.ramShip2Point5TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.fetchKey?.layer.backgroundColor = UIColor.lightText.cgColor
        self.fetchKey2TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.greenFizzTheEndTextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        
        self.JigsUpTextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.jigsUp1Point5TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.yellowFizzTheEndTextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        
        self.heSeemsSeriousTextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.chapter5Before2TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.TurnBackTheEnd?.layer.backgroundColor = UIColor.lightText.cgColor
        
        self.neverKnowTheEnd?.layer.backgroundColor = UIColor.lightText.cgColor
        self.neverGiveUpTextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        
        self.almostGiveUpTextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.checkWindowTextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.checkDoorTextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        
        self.twoDiplomats1TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.twoDiplomats3TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.noPeaceTextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.noPeace2TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.twoDiplomats6TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.iceRayTextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.twoDiplomats7TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.twoDiplomats8TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.twoDiplomats9TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.twoDiplomats10TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.twoDiplomats11TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.twoDiplomats12TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.twoDiplomats13TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.clog1TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.clog2TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.clog3TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.failedDistraction1TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.failedDistraction2TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.tookTheKeyTextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.noKeyTakenTextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.possibleButRisky?.layer.backgroundColor = UIColor.lightText.cgColor
        self.raidOnCovarnius1TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.raidOnCovarnius2TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.raidOnCovarnius3TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.raidOnCovarnius4TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.raidOnCovarnius5TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.raidOnCovarnius6TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.raidOnCovarnius7TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.raidOnCovarnius8TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.raidOnCovarnius9TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.raidOnCovarnius10TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.raidOnCovarnius11TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.raidOnCovarnius12TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.raidOnCovarnius13TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.riseAndShine1TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.riseAndShine2TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.riseAndShine3TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.keepLunaGetSentToPrison?.layer.backgroundColor = UIColor.lightText.cgColor
        self.riseAndShine4TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.riseAndShine5TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.ristAndShine6TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.riseAndShine7TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.riseAndShine8TextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        self.chapter3page2?.layer.backgroundColor = UIColor.lightText.cgColor
        self.whichFizz?.layer.backgroundColor = UIColor.lightText.cgColor
        self.IntroductionTextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        
        self.greenFoodTheEnd?.layer.backgroundColor = UIColor.lightText.cgColor
        self.phaseOneCompleteTextBox?.layer.backgroundColor = UIColor.lightText.cgColor
        
    }
    
    func loadBorderColor() {
        let Color = UIColor.lightGray
        let myColor = Color.cgColor
        self.chap2_0TextBox?.layer.borderColor = myColor
        
        self.yetAnotherDistraction1TextBox?.layer.borderColor = myColor
        self.yetAnotherDistraction2TextBox?.layer.borderColor = myColor
        self.chronoRemindsTextBox?.layer.borderColor = myColor
        self.yetAnotherDistraction3TextBox?.layer.borderColor = myColor
        self.runForItTheEnd?.layer.borderColor = myColor
        self.chap2_3TextBox?.layer.borderColor = myColor
        self.chap2_1TextBox?.layer.borderColor = myColor
        self.chap2_2TextBox?.layer.borderColor = myColor
        self.chap2_3TextBox?.layer.borderColor = myColor
        self.chap3_0?.layer.borderColor = myColor
        self.chap3_1TextBox?.layer.borderColor = myColor
        self.chap3_15TextBox?.layer.borderColor = myColor
        self.chap3_2TextBox?.layer.borderColor = myColor
        self.chap3_25TextBox?.layer.borderColor = myColor
        self.katonian1_point5TextBox?.layer.borderColor = myColor
        self.katonian1TextBox?.layer.borderColor = myColor
        self.katonian2TextBox?.layer.borderColor = myColor
        self.katonian2Point5TextBox?.layer.borderColor = myColor
        self.at_the_ranch_run_choice_part_1TextBox?.layer.borderColor = myColor
        self.at_the_ranch_run_choice_part_2TextBox?.layer.borderColor = myColor
        self.at_the_ranch_run_choice_part_2Point5TextBox?.layer.borderColor = myColor
        self.at_the_ranch_1TextBox?.layer.borderColor = myColor
        self.at_the_ranch_2TextBox?.layer.borderColor = myColor
        self.at_the_ranch_2Point5TextBox?.layer.borderColor = myColor
        self.at_the_ranch_3TextBox?.layer.borderColor = myColor
        self.noTrust_1TextBox?.layer.borderColor = myColor
        self.noTrust1Point5TextBox?.layer.borderColor = myColor
        self.at_the_ranch_3TextBox?.layer.borderColor = myColor
        self.trust1TextBox?.layer.borderColor = myColor
        self.trust1Point5TextBox?.layer.borderColor = myColor
        self.hapalStance1TextBox?.layer.borderColor = myColor
        self.letHapalDownTextBox?.layer.borderColor = myColor
        self.letHapalDown2TextBox?.layer.borderColor = myColor
        self.hapalRescue2AgainTextBox?.layer.borderColor = myColor
        self.hapalRescue3TextBox?.layer.borderColor = myColor
        self.hapalRescueTextBox?.layer.borderColor = myColor
        self.chap4_1TextBox?.layer.borderColor = myColor
        self.chapt4_2TextBox?.layer.borderColor = myColor
        self.chap4_3TextBox?.layer.borderColor = myColor
        self.imNotAScientistPoint5TextBox?.layer.borderColor = myColor
        self.youGoofedPoint5TextBox?.layer.borderColor = myColor
        self.youGoofedTextBox?.layer.borderColor = myColor
        
        self.chapter51Point5TextBox?.layer.borderColor = myColor
        self.chapter5_1TextBox?.layer.borderColor = myColor
        self.chapter5_3TextBox?.layer.borderColor = myColor
        
        self.chapter5_4TextBox?.layer.borderColor = myColor
        
        self.chapter5_4Point5TextBox?.layer.borderColor = myColor
        self.chapter5Before5TextBox?.layer.borderColor = myColor
        self.chapter5Before7TextBox?.layer.borderColor = myColor
        
        self.chapter6_1TextBox?.layer.borderColor = myColor
        self.Chapter6_1AmbassadorTextBox?.layer.borderColor = myColor
        self.chapter6_1Point5TextBox?.layer.borderColor = myColor
        
        self.chapter6_2TextBox?.layer.borderColor = myColor
        self.chapter6_3TextBox?.layer.borderColor = myColor
        self.chapter6_3Point5TextBox?.layer.borderColor = myColor
        
        self.chapter6_3AmbassadorTextBox?.layer.borderColor = myColor
        self.chapter6_4TextBox?.layer.borderColor = myColor
        self.Chapter_6_4_AmbassadorTextBox?.layer.borderColor = myColor
        
        self.chapter6_4Point5TextBox?.layer.borderColor = myColor
        self.chapter6_5TextBox?.layer.borderColor = myColor
        self.chapter6_5AmbassadorTextBox?.layer.borderColor = myColor
        
        self.Chapter6_6AmbassadorTextBox?.layer.borderColor = myColor
        self.chapter6_6Point5TextBox?.layer.borderColor = myColor
        self.Chapter6_before7TextBox?.layer.borderColor = myColor
        self.dessertTextBox?.layer.borderColor = myColor
        self.goodGrowlicsTextBox?.layer.borderColor = myColor
        self.TheyreViciousRunTextBox?.layer.borderColor = myColor
        self.theyreViciousRunTextBox_1Point5TextBox?.layer.borderColor = myColor
        
        self.theyreViciousRun_2TextBox?.layer.borderColor = myColor
        self.theyreViciousRun_2Point5TextBox?.layer.borderColor = myColor
        self.counciChamberSneakTextBox?.layer.borderColor = myColor
        
        self.councilChamberSneak_1Point5?.layer.borderColor = myColor
        self.chapter6_6TextBox?.layer.borderColor = myColor
        self.CCCExplanationTextBox?.layer.borderColor = myColor
        
        self.ramShipTextBox?.layer.borderColor = myColor
        self.ramShip2TextBox?.layer.borderColor = myColor
        self.ramShip2Point5TextBox?.layer.borderColor = myColor
        
        
        self.fetchKey?.layer.borderColor = myColor
        self.fetchKey2TextBox?.layer.borderColor = myColor
        self.greenFizzTheEndTextBox?.layer.borderColor = myColor
        
        self.JigsUpTextBox?.layer.borderColor = myColor
        self.jigsUp1Point5TextBox?.layer.borderColor = myColor
        self.yellowFizzTheEndTextBox?.layer.borderColor = myColor
        
        self.heSeemsSeriousTextBox?.layer.borderColor = myColor
        self.chapter5Before2TextBox?.layer.borderColor = myColor
        self.TurnBackTheEnd?.layer.borderColor = myColor
        
        self.neverKnowTheEnd?.layer.borderColor = myColor
        self.neverGiveUpTextBox?.layer.borderColor = myColor
        
        self.almostGiveUpTextBox?.layer.borderColor = myColor
        self.checkWindowTextBox?.layer.borderColor = myColor
        self.checkDoorTextBox?.layer.borderColor = myColor
        
        self.twoDiplomats1TextBox?.layer.borderColor = myColor
        self.twoDiplomats3TextBox?.layer.borderColor = myColor
        self.noPeaceTextBox?.layer.borderColor = myColor
        self.noPeace2TextBox?.layer.borderColor = myColor
        self.twoDiplomats6TextBox?.layer.borderColor = myColor
        self.iceRayTextBox?.layer.borderColor = myColor
        self.twoDiplomats7TextBox?.layer.borderColor = myColor
        self.twoDiplomats8TextBox?.layer.borderColor = myColor
        self.twoDiplomats9TextBox?.layer.borderColor = myColor
        self.twoDiplomats10TextBox?.layer.borderColor = myColor
        self.twoDiplomats11TextBox?.layer.borderColor = myColor
        self.twoDiplomats12TextBox?.layer.borderColor = myColor
        self.twoDiplomats13TextBox?.layer.borderColor = myColor
        self.clog1TextBox?.layer.borderColor = myColor
        self.clog2TextBox?.layer.borderColor = myColor
        self.clog3TextBox?.layer.borderColor = myColor
        self.failedDistraction1TextBox?.layer.borderColor = myColor
        self.failedDistraction2TextBox?.layer.borderColor = myColor
        self.tookTheKeyTextBox?.layer.borderColor = myColor
        self.noKeyTakenTextBox?.layer.borderColor = myColor
        self.possibleButRisky?.layer.borderColor = myColor
        self.raidOnCovarnius1TextBox?.layer.borderColor = myColor
        self.raidOnCovarnius2TextBox?.layer.borderColor = myColor
        self.raidOnCovarnius3TextBox?.layer.borderColor = myColor
        self.raidOnCovarnius4TextBox?.layer.borderColor = myColor
        self.raidOnCovarnius5TextBox?.layer.borderColor = myColor
        self.raidOnCovarnius6TextBox?.layer.borderColor = myColor
        self.raidOnCovarnius7TextBox?.layer.borderColor = myColor
        self.raidOnCovarnius8TextBox?.layer.borderColor = myColor
        self.raidOnCovarnius9TextBox?.layer.borderColor = myColor
        self.raidOnCovarnius10TextBox?.layer.borderColor = myColor
        self.raidOnCovarnius11TextBox?.layer.borderColor = myColor
        self.raidOnCovarnius12TextBox?.layer.borderColor = myColor
        self.raidOnCovarnius13TextBox?.layer.borderColor = myColor
        self.riseAndShine1TextBox?.layer.borderColor = myColor
        self.riseAndShine2TextBox?.layer.borderColor = myColor
        self.riseAndShine3TextBox?.layer.borderColor = myColor
        self.keepLunaGetSentToPrison?.layer.borderColor = myColor
        self.riseAndShine4TextBox?.layer.borderColor = myColor
        self.riseAndShine5TextBox?.layer.borderColor = myColor
        self.ristAndShine6TextBox?.layer.borderColor = myColor
        self.riseAndShine7TextBox?.layer.borderColor = myColor
        self.riseAndShine8TextBox?.layer.borderColor = myColor
        self.chapter3page2?.layer.borderColor = myColor
        self.whichFizz?.layer.borderColor = myColor
        self.IntroductionTextBox?.layer.borderColor = myColor
        
        self.greenFoodTheEnd?.layer.borderColor = myColor
        self.phaseOneCompleteTextBox?.layer.borderColor = myColor
    }
    
    func loadBorderWidth(borderWidth:CGFloat!) {
        
        self.yetAnotherDistraction1TextBox?.layer.borderWidth = borderWidth
        self.yetAnotherDistraction2TextBox?.layer.borderWidth = borderWidth
        self.chronoRemindsTextBox?.layer.borderWidth = borderWidth
        self.yetAnotherDistraction3TextBox?.layer.borderWidth = borderWidth
        self.runForItTheEnd?.layer.borderWidth = borderWidth
        self.chap2_0TextBox?.layer.borderWidth = borderWidth
        self.chap2_3TextBox?.layer.borderWidth = borderWidth
        self.chap2_1TextBox?.layer.borderWidth = borderWidth
        self.chap2_2TextBox?.layer.borderWidth = borderWidth
        self.chap2_3TextBox?.layer.borderWidth = borderWidth
        self.chap3_0?.layer.borderWidth = borderWidth
        self.chap3_1TextBox?.layer.borderWidth = borderWidth
        self.chap3_15TextBox?.layer.borderWidth = borderWidth
        self.chap3_2TextBox?.layer.borderWidth = borderWidth
        self.chap3_25TextBox?.layer.borderWidth = borderWidth
        self.katonian1_point5TextBox?.layer.borderWidth = borderWidth
        self.katonian1TextBox?.layer.borderWidth = borderWidth
        self.katonian2TextBox?.layer.borderWidth = borderWidth
        self.katonian2Point5TextBox?.layer.borderWidth = borderWidth
        self.at_the_ranch_run_choice_part_1TextBox?.layer.borderWidth = borderWidth
        self.at_the_ranch_run_choice_part_2TextBox?.layer.borderWidth = borderWidth
        self.at_the_ranch_run_choice_part_2Point5TextBox?.layer.borderWidth = borderWidth
        self.at_the_ranch_1TextBox?.layer.borderWidth = borderWidth
        self.at_the_ranch_2TextBox?.layer.borderWidth = borderWidth
        self.at_the_ranch_2Point5TextBox?.layer.borderWidth = borderWidth
        self.at_the_ranch_3TextBox?.layer.borderWidth = borderWidth
        self.noTrust_1TextBox?.layer.borderWidth = borderWidth
        self.noTrust1Point5TextBox?.layer.borderWidth = borderWidth
        self.at_the_ranch_3TextBox?.layer.borderWidth = borderWidth
        self.trust1TextBox?.layer.borderWidth = borderWidth
        self.trust1Point5TextBox?.layer.borderWidth = borderWidth
        self.hapalStance1TextBox?.layer.borderWidth = borderWidth
        self.letHapalDownTextBox?.layer.borderWidth = borderWidth
        self.letHapalDown2TextBox?.layer.borderWidth = borderWidth
        self.hapalRescue2AgainTextBox?.layer.borderWidth = borderWidth
        self.hapalRescue3TextBox?.layer.borderWidth = borderWidth
        self.hapalRescueTextBox?.layer.borderWidth = borderWidth
        self.chap4_1TextBox?.layer.borderWidth = borderWidth
        self.chapt4_2TextBox?.layer.borderWidth = borderWidth
        self.chap4_3TextBox?.layer.borderWidth = borderWidth
        self.imNotAScientistPoint5TextBox?.layer.borderWidth = borderWidth
        self.youGoofedPoint5TextBox?.layer.borderWidth = borderWidth
        self.youGoofedTextBox?.layer.borderWidth = borderWidth
        
        self.chapter51Point5TextBox?.layer.borderWidth = borderWidth
        self.chapter5_1TextBox?.layer.borderWidth = borderWidth
        self.chapter5_3TextBox?.layer.borderWidth = borderWidth
        
        self.chapter5_4TextBox?.layer.borderWidth = borderWidth
        
        self.chapter5_4Point5TextBox?.layer.borderWidth = borderWidth
        self.chapter5Before5TextBox?.layer.borderWidth = borderWidth
        self.chapter5Before7TextBox?.layer.borderWidth = borderWidth
        
        self.chapter6_1TextBox?.layer.borderWidth = borderWidth
        self.Chapter6_1AmbassadorTextBox?.layer.borderWidth = borderWidth
        self.chapter6_1Point5TextBox?.layer.borderWidth = borderWidth
        
        self.chapter6_2TextBox?.layer.borderWidth = borderWidth
        self.chapter6_3TextBox?.layer.borderWidth = borderWidth
        self.chapter6_3Point5TextBox?.layer.borderWidth = borderWidth
        
        self.chapter6_3AmbassadorTextBox?.layer.borderWidth = borderWidth
        self.chapter6_4TextBox?.layer.borderWidth = borderWidth
        self.Chapter_6_4_AmbassadorTextBox?.layer.borderWidth = borderWidth
        
        self.chapter6_4Point5TextBox?.layer.borderWidth = borderWidth
        self.chapter6_5TextBox?.layer.borderWidth = borderWidth
        self.chapter6_5AmbassadorTextBox?.layer.borderWidth = borderWidth
        
        self.Chapter6_6AmbassadorTextBox?.layer.borderWidth = borderWidth
        self.chapter6_6Point5TextBox?.layer.borderWidth = borderWidth
        self.Chapter6_before7TextBox?.layer.borderWidth = borderWidth
        self.dessertTextBox?.layer.borderWidth = borderWidth
        self.goodGrowlicsTextBox?.layer.borderWidth = borderWidth
        self.TheyreViciousRunTextBox?.layer.borderWidth = borderWidth
        self.theyreViciousRunTextBox_1Point5TextBox?.layer.borderWidth = borderWidth
        
        self.theyreViciousRun_2TextBox?.layer.borderWidth = borderWidth
        self.theyreViciousRun_2Point5TextBox?.layer.borderWidth = borderWidth
        self.counciChamberSneakTextBox?.layer.borderWidth = borderWidth
        
        self.councilChamberSneak_1Point5?.layer.borderWidth = borderWidth
        self.chapter6_6TextBox?.layer.borderWidth = borderWidth
        self.CCCExplanationTextBox?.layer.borderWidth = borderWidth
        
        self.ramShipTextBox?.layer.borderWidth = borderWidth
        self.ramShip2TextBox?.layer.borderWidth = borderWidth
        self.ramShip2Point5TextBox?.layer.borderWidth = borderWidth
        
        
        self.fetchKey?.layer.borderWidth = borderWidth
        self.fetchKey2TextBox?.layer.borderWidth = borderWidth
        self.greenFizzTheEndTextBox?.layer.borderWidth = borderWidth
        
        self.JigsUpTextBox?.layer.borderWidth = borderWidth
        self.jigsUp1Point5TextBox?.layer.borderWidth = borderWidth
        self.yellowFizzTheEndTextBox?.layer.borderWidth = borderWidth
        
        self.heSeemsSeriousTextBox?.layer.borderWidth = borderWidth
        self.chapter5Before2TextBox?.layer.borderWidth = borderWidth
        self.TurnBackTheEnd?.layer.borderWidth = borderWidth
        
        self.neverKnowTheEnd?.layer.borderWidth = borderWidth
        self.neverGiveUpTextBox?.layer.borderWidth = borderWidth
        
        self.almostGiveUpTextBox?.layer.borderWidth = borderWidth
        self.checkWindowTextBox?.layer.borderWidth = borderWidth
        self.checkDoorTextBox?.layer.borderWidth = borderWidth
        
        self.twoDiplomats1TextBox?.layer.borderWidth = borderWidth
        self.twoDiplomats3TextBox?.layer.borderWidth = borderWidth
        self.noPeaceTextBox?.layer.borderWidth = borderWidth
        self.noPeace2TextBox?.layer.borderWidth = borderWidth
        self.twoDiplomats6TextBox?.layer.borderWidth = borderWidth
        self.iceRayTextBox?.layer.borderWidth = borderWidth
        self.twoDiplomats7TextBox?.layer.borderWidth = borderWidth
        self.twoDiplomats8TextBox?.layer.borderWidth = borderWidth
        self.twoDiplomats9TextBox?.layer.borderWidth = borderWidth
        self.twoDiplomats10TextBox?.layer.borderWidth = borderWidth
        self.twoDiplomats11TextBox?.layer.borderWidth = borderWidth
        self.twoDiplomats12TextBox?.layer.borderWidth = borderWidth
        self.twoDiplomats13TextBox?.layer.borderWidth = borderWidth
        self.clog1TextBox?.layer.borderWidth = borderWidth
        self.clog2TextBox?.layer.borderWidth = borderWidth
        self.clog3TextBox?.layer.borderWidth = borderWidth
        self.failedDistraction1TextBox?.layer.borderWidth = borderWidth
        self.failedDistraction2TextBox?.layer.borderWidth = borderWidth
        self.tookTheKeyTextBox?.layer.borderWidth = borderWidth
        self.noKeyTakenTextBox?.layer.borderWidth = borderWidth
        self.possibleButRisky?.layer.borderWidth = borderWidth
        self.raidOnCovarnius1TextBox?.layer.borderWidth = borderWidth
        self.raidOnCovarnius2TextBox?.layer.borderWidth = borderWidth
        self.raidOnCovarnius3TextBox?.layer.borderWidth = borderWidth
        self.raidOnCovarnius4TextBox?.layer.borderWidth = borderWidth
        self.raidOnCovarnius5TextBox?.layer.borderWidth = borderWidth
        self.raidOnCovarnius6TextBox?.layer.borderWidth = borderWidth
        self.raidOnCovarnius7TextBox?.layer.borderWidth = borderWidth
        self.raidOnCovarnius8TextBox?.layer.borderWidth = borderWidth
        self.raidOnCovarnius9TextBox?.layer.borderWidth = borderWidth
        self.raidOnCovarnius10TextBox?.layer.borderWidth = borderWidth
        self.raidOnCovarnius11TextBox?.layer.borderWidth = borderWidth
        self.raidOnCovarnius12TextBox?.layer.borderWidth = borderWidth
        self.raidOnCovarnius13TextBox?.layer.borderWidth = borderWidth
        self.riseAndShine1TextBox?.layer.borderWidth = borderWidth
        self.riseAndShine2TextBox?.layer.borderWidth = borderWidth
        self.riseAndShine3TextBox?.layer.borderWidth = borderWidth
        self.keepLunaGetSentToPrison?.layer.borderWidth = borderWidth
        self.riseAndShine4TextBox?.layer.borderWidth = borderWidth
        self.riseAndShine5TextBox?.layer.borderWidth = borderWidth
        self.ristAndShine6TextBox?.layer.borderWidth = borderWidth
        self.riseAndShine7TextBox?.layer.borderWidth = borderWidth
        self.riseAndShine8TextBox?.layer.borderWidth = borderWidth
        self.chapter3page2?.layer.borderWidth = borderWidth
        self.whichFizz?.layer.borderWidth = borderWidth
        self.IntroductionTextBox?.layer.borderWidth = borderWidth
        
        self.greenFoodTheEnd?.layer.borderWidth = borderWidth
        
        self.phaseOneCompleteTextBox?.layer.borderWidth = borderWidth
        
    
    
    }
    
    // MARK: Buttons
    @IBOutlet weak var runAwayButton: UIButton!
    @IBOutlet weak var stopSeeSkyButton: UIButton!
    @IBOutlet weak var fizzyYellowButton: UIButton!
    @IBOutlet weak var theEndYellowLiquidButton: UIButton!
    @IBOutlet weak var theEndBrightGreenLiquidButton: UIButton!
    @IBOutlet weak var theEndYouGaveUpButton: UIButton!
    @IBOutlet weak var theEndFirstOneButton: UIButton!
    @IBOutlet weak var theEndRaidOnCovarniusButton: UIButton!
    
    
    @IBOutlet weak var newPlanButton: UIButton!
    @IBOutlet weak var theEndWindowButton: UIButton!
    @IBOutlet weak var theEndClogToiletDistractionFailed: UIButton!
    @IBOutlet weak var theEndThirdBestEnding: UIButton!
    @IBOutlet weak var theEndBadFoodButton: UIButton!
    @IBOutlet weak var theEndBestEnding: UIButton!
    @IBOutlet weak var brightGreenButton: UIButton!
    

    func loadDecisionPointButton(button: UIButton?) {
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
    
    // MARK: Load The Decision Points Buttons
    func loadDecisionPointButtons(){
        loadDecisionPointButton(button: self.runAwayButton)
        loadDecisionPointButton(button: self.stopSeeSkyButton)
 
        loadDecisionPointButton(button: self.stopSeeSkyButton)
        loadDecisionPointButton(button: self.fizzyYellowButton)
        loadDecisionPointButton(button: self.brightGreenButton)
        loadDecisionPointButton(button: self.newPlanButton)
       
    }
    
    func loadTheEndButton(button: UIButton?) {
        button?.layer.borderWidth = 4
        button?.layer.cornerRadius = 18
        button?.layer.backgroundColor = UIColor.red.cgColor
        button?.layer.borderColor = UIColor.lightGray.cgColor
        button?.setTitleColor(UIColor.black, for: .normal)
        button?.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        button?.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        button?.layer.shadowOpacity = 1.0
        button?.layer.shadowRadius = 0.0
        
    }
    
    // MARK: Load The End Buttons
    func loadTheEndButtons() {
        loadTheEndButton(button: self.theEndYellowLiquidButton)
        loadTheEndButton(button: self.theEndYellowLiquidButton)
        loadTheEndButton(button: self.theEndYouGaveUpButton)
        loadTheEndButton(button: self.theEndFirstOneButton)
        loadTheEndButton(button: self.theEndRaidOnCovarniusButton)
        loadTheEndButton(button: self.theEndClogToiletDistractionFailed)
        loadTheEndButton(button: self.theEndWindowButton)
        loadTheEndButton(button: self.theEndBadFoodButton)
        
        
    }
}
extension UITextView {
    
    func changeFontSizeByDevice(width: CGFloat) {
        switch width {
        case 0..<321: // iPhone 4 and iPhone 5
            self.font = UIFont(name: "Avenir-Book", size: 15)
        case 375: // iPhone 6
            self.font = UIFont(name: "Avenir-Book", size: 16)
        case 414: // iPhone 6 Plus, iPhone 8 Plus
            self.font = UIFont(name: "Avenir-Book", size: 20)
        case 768: // iPad
            self.font = UIFont(name: "Avenir-Book", size: 25)
        default: // iPad Pro
            self.font = UIFont(name: "Avenir-Book", size: 25)
        }
        
    }
    
}
