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
    

    @objc func gestureRecognizer(sender: Any?) {
        animateSwipeDownLabel()

    }
    
    func createInstuctionsLabel() {
        let label = self.instructionsLabel
         label.text = "Tap for Instructions!"
            label.textAlignment = .center
        if(self.difficultySetting.last?.isEasyMode == false) {
            label.frame = CGRect(x:  view.frame.width/2 - 120, y: view.frame.height/1.40, width: 200, height: 100)
           
        
            createHardModeLabel()
        } else {
            label.frame = CGRect(x:  view.frame.width/2 - 100, y: view.frame.height/1.40, width: 200, height: 36)
          
            label.textAlignment = .center
        }
        label.backgroundColor = .clear
        label.textColor = .yellow
        label.font = UIFont(name: "Futura", size: 20.0)
        
        
        view.addSubview(label)
        view.bringSubview(toFront: label)
    }
    
    func createHardModeLabel() {
        let label = self.hardModeLabel
       
        label.frame = CGRect(x:  view.frame.width/2 - 150, y: view.frame.height/1.30, width: 300, height: 100)
        label.text = "(Hard Mode? You must be pretty brave!)"
        label.textAlignment = .center
        label.backgroundColor = .clear
        label.textColor = .yellow
        let width = self.view.frame.size.width
        label.changeFontSizeByDevice(width: width)
        view.addSubview(label)
        view.bringSubview(toFront: label)
    }

}
extension UILabel {
    
    func changeFontSizeByDevice(width: CGFloat) {
        switch width {
        case 0..<321: // iPhone 4 and iPhone 5
            self.font = UIFont(name: "Futura", size: 15)
        case 375: // iPhone 6
            self.font = UIFont(name: "Futura", size: 16)
        case 414: // iPhone 6 Plus, iPhone 8 Plus
            self.font = UIFont(name: "Futura", size: 16)
        case 768: // iPad
            self.font = UIFont(name: "Futura", size: 20)
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
