//
//  ArrowViewController.swift
//  Pilot
//
//  Created by Erik Mikac on 7/8/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

class ArrowViewController: ChapterViewController {
    let arrow = UIBezierPath()
    let arrowLayer = CAShapeLayer()
    let color = UIColor.black.cgColor
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.arrow.addArrow(start: CGPoint(x: 200, y: view.frame.height - 200), end: CGPoint(x: 200, y: view.frame.height - 100 ), pointerLineLength: 30, arrowAngle: CGFloat(Double.pi / 4))
        

        self.arrowLayer.lineWidth = 8
        self.arrowLayer.path = arrow.cgPath
        self.arrowLayer.fillColor = UIColor.clear.cgColor
        self.arrowLayer.lineJoin = kCALineJoinRound
        self.arrowLayer.lineCap = kCALineCapRound
        self.arrowLayer.strokeColor = color
        self.view.layer.addSublayer(self.arrowLayer)
        let shapeLayer = self.arrow
       
       
 
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func animateArrowUp(){

        UIView.animate(withDuration: 2.0, delay: 2.0, options:[], animations: {
          self.arrowLayer.strokeColor = UIColor.blue.cgColor
         
           
        }, completion: { finished in
            if finished {
               self.arrowLayer.strokeColor = UIColor.black.cgColor
            }
        })
    }

}


extension UIBezierPath {
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
}
