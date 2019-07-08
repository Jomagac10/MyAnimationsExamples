//
//  ViewController.swift
//  circleShape
//
//  Created by José Manuel García Chávez on 5/18/18.
//  Copyright © 2018 Diplomado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var loadingView : LoadingView = {
        let view = LoadingView(frame: self.view.frame)
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(self.loadingView)
        let tap = UITapGestureRecognizer(target: self, action: #selector(onTap))
        self.view.addGestureRecognizer(tap)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @objc func onTap(){
        print("tapping...")
        loadingView.animatePulse()
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

