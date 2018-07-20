//
//  ArrowViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 7/8/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class ArrowViewController: ChapterViewController {
   /* let arrow = UIBezierPath()
    let arrowLayer = CAShapeLayer()
    let color = UIColor.black.cgColor */
    var tapRecognizer: UITapGestureRecognizer!
    @IBOutlet weak var cantGoBackLabel: UILabel!
    
    @IBOutlet weak var goodLuckLabel: UILabel!
    @IBOutlet weak var swipeDownLabel: UILabel!
    @IBOutlet weak var chooseWiselyLabel: UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()
        swipeDownLabel.alpha = 0
        cantGoBackLabel.alpha = 0
        chooseWiselyLabel.alpha = 0
        goodLuckLabel.alpha = 0
        goodLuckLabel.font = UIFont(name: "Futura", size: 25.0)
        swipeDownLabel.font = UIFont(name: "Futura", size: 20.0)
        chooseWiselyLabel.font = UIFont(name: "Futura", size: 20.0)
        cantGoBackLabel.font = UIFont(name: "Futura", size: 20.0)
        if self.goodLuckLabel.applyGradientWith(startColor: .red, endColor: .black) {
            print("Gradient successfully applied")
        } else {
            goodLuckLabel.textColor = .black
        }
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
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func animateSwipeDownLabel()
    {
        UIView.animate(withDuration: 1.0, delay: 0.0, options: [], animations: {
            self.swipeDownLabel.alpha = 1
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
