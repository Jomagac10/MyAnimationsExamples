//
//  ViewController.swift
//  Animaniac
//
//  Created by José Manuel García Chávez on 5/12/18.
//  Copyright © 2018 Diplomado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ActionBtn1: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.ActionBtn1.backgroundColor = .purple
//        ActionBtn1.bounds = CGRect(x: ActionBtn1.center.x, y: ActionBtn1.center.y, width: ActionBtn1.bounds.width/10.0, height: ActionBtn1.bounds.height)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTapBtn1(_ sender: Any) {
//        print("tapping")
//        UIView.animate(withDuration: 1, animations: {
//            self.ActionBtn1.transform = CGAffineTransform(translationX: 100, y: 0)
//            self.ActionBtn1.transform = CGAffineTransform(rotationAngle: 20.01*CGFloat.pi)
//            self.ActionBtn1.transform = CGAffineTransform(scaleX:2.0, y:2.0)
//            self.ActionBtn1.backgroundColor = .red
//        }) { (success) in
//            guard success else {return}
//            UIView.animate(withDuration: 0.3, animations: {
//                self.ActionBtn1.transform = CGAffineTransform.identity
//                self.ActionBtn1.backgroundColor = .purple
//            })
//        }
        
        
        //KEYFRAMES
//        let anima = CAKeyframeAnimation(keyPath: "backgroundColor")
//        let times : [NSNumber] = [0.0,0.25,0.5,0.75,1.0]
//        anima.keyTimes = times
//        anima.values = [UIColor.red.cgColor, UIColor.yellow.cgColor, UIColor.green.cgColor, UIColor.cyan.cgColor, UIColor.blue.cgColor]
//        //anima.timingFunctions = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
//        anima.duration = 0.5
//        //anima.repeatCount = Float.infinity
//        anima.repeatCount = 3.0
//        anima.autoreverses = true
//
//        ActionBtn1.layer.add(anima, forKey: "backgroundColor")
//
        
        let spring = CASpringAnimation(keyPath: "transform.scale.x")
        spring.fromValue = 1
        spring.toValue = 2
        spring.damping = 4
        spring.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
        
        
        spring.duration = 2
        spring.autoreverses = true
        
        
        
        let revert = CABasicAnimation(keyPath: "transform.scale.x")
        revert.fromValue = 2
        revert.toValue = 1
        revert.duration = 1
        revert.timeOffset = 2
        
        let group = CAAnimationGroup()
        group.animations = [spring,revert]
        group.duration = 3
        self.ActionBtn1.layer.add(group, forKey: "springAndReverse")
        
//        self.view.layer.add(spring, forKey: "spring.x")
//        self.view.layer.add(revert, forKey: "revert.spring.x")
        
        
    }
    
}

