//
//  SecondViewController.swift
//  HowDisplayViewController
//
//  Created by PATRICK LESAINT on 15/08/2019.
//  Copyright © 2019 PATRICK LESAINT. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var counterLabel: UILabel!
    
    private var time = 0
    private var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.counterLabel.text = "0"
        self.time = 0
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.timer.invalidate()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: (#selector(updateTimer)), userInfo: nil, repeats: true)
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3), execute: {
            
            // wait 3 seconds and display the last viewController
            // by push in navigation controller
            let vc = LastViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        })
        
    }
    
    @objc func updateTimer() {
        self.time = self.time + 1
        self.counterLabel.text = "\(self.time)"
    }
}
