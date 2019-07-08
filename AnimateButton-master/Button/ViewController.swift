//
//  ViewController.swift
//  Button
//
//  Created by Luis Ezcurdia on 5/18/18.
//  Copyright © 2018 Luis Ezcurdia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    lazy var loadingView: LoadingView = {
        let view = LoadingView(frame: self.view.frame)
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(self.loadingView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
