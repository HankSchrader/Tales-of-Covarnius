//
//  ArrowViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 7/8/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit
import CoreData

class ArrowViewController: ChapterViewController {

    var tapRecognizer: UITapGestureRecognizer!
    var hardModeLabel = UILabel()
    var difficultySetting: [Difficulty] = []
    @IBOutlet weak var cantGoBackLabel: UILabel!
    var instructionsLabel = UILabel()
    @IBOutlet weak var goodLuckLabel: UILabel!
    @IBOutlet weak var swipeDownLabel: UILabel!
    @IBOutlet weak var chooseWiselyLabel: UILabel!
    var hardModeInstructionsLabel = UILabel()
    var hardModeInstructionsLabel2 = UILabel()
    var hardModeLabel2 = UILabel()


    override func viewDidLoad() {
        super.viewDidLoad()
        swipeDownLabel.alpha = 0
        cantGoBackLabel.alpha = 0
        chooseWiselyLabel.alpha = 0
        goodLuckLabel.alpha = 0
       
        var startColor: UIColor = .green
        let width = self.view.frame.size.width
        goodLuckLabel.changeFontSizeByDevice(width: width)
        swipeDownLabel.changeFontSizeByDevice(width: width)
        chooseWiselyLabel.changeFontSizeByDevice(width: width)
        cantGoBackLabel.changeFontSizeByDevice(width: width)
        let fetchRequest: NSFetchRequest<Difficulty> = Difficulty.fetchRequest()
        do {
            self.difficultySetting = try PersistanceService.context.fetch(fetchRequest)
        } catch
        {
            print("fetch failed!")
        }
        
        if(self.difficultySetting.last?.isEasyMode == false) {
            startColor = .red
        }
        if self.goodLuckLabel.applyGradientWith(startColor: startColor, endColor: .black) {
            print("Gradient successfully applied")
        } else {
            goodLuckLabel.textColor = .black
        }
        createInstuctionsLabel()
        
        self.tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(gestureRecognizer))
        self.view.addGestureRecognizer(self.tapRecognizer)

        // Do any additional setup after loading the view.
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        swipeDownLabel.alpha = 0
        cantGoBackLabel.alpha = 0
        chooseWiselyLabel.alpha = 0
        goodLuckLabel.alpha = 0
        hardModeInstructionsLabel.alpha = 1
        hardModeInstructionsLabel2.alpha = 1
        instructionsLabel.alpha = 1
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func animateSwipeDownLabel()
    {
        UIView.animate(withDuration: 1.0, delay: 0.0, options: [], animations: {
            self.swipeDownLabel.alpha = 1
            self.instructionsLabel.alpha = 0
        }, completion: { finished in
            if finished {
                self.animateWiseLabel()
                
            }
        })
    }

    
    func animateWiseLabel()
    {
        UIView.animate(withDuration: 1.0, delay: 0.0, options: [], animations: {
            self.chooseWiselyLabel.alpha = 1
        },  completion: { finished in
            if finished {
                self.animateCantGoBackLabel()
                
            }
        })
    }
    
    func animateCantGoBackLabel() {
        UIView.animate(withDuration: 1.0, delay: 0.0, options: [], animations: {
            self.cantGoBackLabel.alpha = 1
        },   completion: { finished in
            if finished {
                self.animateGoodLuck()
                
            }
        })
    }
    
    func animateGoodLuck() {
        UIView.animate(withDuration: 1.0, delay: 0.0, options: [], animations: {
            self.goodLuckLabel.alpha = 1
        },  completion: nil)
    }
    
    func animateHadeModeInstructions() {
        UIView.animate(withDuration: 1.0, delay: 1.0, options: [], animations: {
            self.hardModeInstructionsLabel.alpha = 1
        },  completion: nil)
    }
    

    @objc func gestureRecognizer(sender: Any?) {
        animateSwipeDownLabel()

    }
    
    func createInstuctionsLabel() {
        let label = self.instructionsLabel
         label.text = "Tap for Instructions!"
        if(self.difficultySetting.last?.isEasyMode == false) {
            label.frame = CGRect(x:  view.frame.width/2 - 250, y: view.frame.height/4, width: 400, height: 100)
           
        
            createHardModeLabel()
            createHardModeInstructionsLabel()
        } else {
            label.frame = CGRect(x:  view.frame.width/2 - 250, y: view.frame.height/4, width: 400, height: 36)
          
           
        }
        label.backgroundColor = .clear
        label.textColor = .black
        let width = self.view.frame.size.width
        if(width > 600) {
            label.font = UIFont(name: "Futura", size: 30.0) }
        else {
             label.frame = CGRect(x:  view.frame.width/2 - 150, y: view.frame.height/4, width: 400, height: 36)
             label.font = UIFont(name: "Futura", size: 20.0)
        }

        view.addSubview(label)
        view.bringSubview(toFront: label)
    }
    
    func createHardModeInstructionsLabel() {
        let label = self.hardModeInstructionsLabel
        let label2 = self.hardModeInstructionsLabel2
        label.text = "Make a wrong choice"
        label2.text = "And your progress won't save!"
        label.backgroundColor = .clear
        label2.backgroundColor = .clear
        label.textColor = .yellow
        label2.textColor  = .yellow
        let width = self.view.frame.size.width
        if(width > 600) {
            label.frame = CGRect(x:  view.frame.width/2 - 250, y: view.frame.height/1.30, width: 400, height: 80)
            label2.frame =  CGRect(x:  view.frame.width/2 - 250, y: view.frame.height/1.20, width: 400, height: 80)
            label.font = UIFont(name: "Futura", size: 30)
            label2.font = UIFont(name: "Futura", size: 30)
        } else {
            label.frame = CGRect(x:  view.frame.width/2 - 150, y: view.frame.height/1.30, width: 400, height: 80)
            label2.frame =  CGRect(x:  view.frame.width/2 - 150, y: view.frame.height/1.20, width: 400, height: 80)
             label.font = UIFont(name: "Futura", size: 20)
             label2.font = UIFont(name: "Futura", size: 20)
        }
        
        view.addSubview(label)
        view.bringSubview(toFront: label)
        view.addSubview(label2)
        view.bringSubview(toFront: label2)
    }
    
    func createHardModeLabel() {
        let label = self.hardModeLabel
        let label2 = self.hardModeLabel2
        
        label2.text = "Playing on Hard Mode?"
        label.text = "You must be brave!"
       
        label.backgroundColor = .clear
        label2.backgroundColor = .clear
        label.textColor = .yellow
        label2.textColor = .yellow
        let width = self.view.frame.size.width
        if(width > 600) {
            label2.frame = CGRect(x:  view.frame.width/2 - 250, y: view.frame.height/1.60, width: 500, height: 100)
            label2.font = UIFont(name: "Futura", size: 30)
            label.frame = CGRect(x:  view.frame.width/2 - 250, y: view.frame.height/1.45, width: 500, height: 100)
            label.font = UIFont(name: "Futura", size: 30)
        } else {
            label2.frame = CGRect(x:  view.frame.width/2 - 150, y: view.frame.height/1.60, width: 500, height: 100)
            label2.font = UIFont(name: "Futura", size: 20)
            label.frame = CGRect(x:  view.frame.width/2 - 150, y: view.frame.height/1.45, width: 500, height: 100)
            label.font = UIFont(name: "Futura", size: 20)
        }
        
        view.addSubview(label)
        view.bringSubview(toFront: label)
        view.addSubview(label2)
        view.bringSubview(toFront: label2)
    }

}
extension UILabel {
    
    func changeFontSizeByDevice(width: CGFloat) {
        switch width {
        case 0..<321: // iPhone 4 and iPhone 5
            self.font = UIFont(name: "Futura", size: 20)
        case 375: // iPhone 6
            self.font = UIFont(name: "Futura", size: 20)
        case 414: // iPhone 6 Plus, iPhone 8 Plus
            self.font = UIFont(name: "Futura", size: 20)
        case 768: // iPad
            self.font = UIFont(name: "Futura", size: 25)
        case 769..<2000: // iPad Pro
            self.font = UIFont(name: "Futura", size: 40)
        default:
              self.font = UIFont(name: "Futura", size: 16)
            
        }
        
        
    }
    
}

/*extension UIBezierPath {
    func addArrow(start: CGPoint, end: CGPoint, pointerLineLength: CGFloat, arrowAngle: CGFloat) {
       

        
        self.move(to: start)
        self.addLine(to: end)
        
        let startEndAngle = atan((end.y - start.y) / (end.x - start.x)) + ((end.x - start.x) < 0 ? CGFloat(Double.pi) : 0)
        let arrowLine1 = CGPoint(x: end.x + pointerLineLength * cos(CGFloat(Double.pi) - startEndAngle + arrowAngle), y: end.y - pointerLineLength * sin(CGFloat(Double.pi) - startEndAngle + arrowAngle))
        let arrowLine2 = CGPoint(x: end.x + pointerLineLength * cos(CGFloat(Double.pi) - startEndAngle - arrowAngle), y: end.y - pointerLineLength * sin(CGFloat(Double.pi) - startEndAngle - arrowAngle))
        
        self.addLine(to: arrowLine1)
        self.move(to: end)
        self.addLine(to: arrowLine2)

    }
} */
