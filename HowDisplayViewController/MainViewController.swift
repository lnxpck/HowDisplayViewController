//
//  MainViewController.swift
//  HowDisplayViewController
//
//  Created by PATRICK LESAINT on 15/08/2019.
//  Copyright © 2019 PATRICK LESAINT. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet var clickButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.clickButton.layer.cornerRadius = self.clickButton.frame.height / 2
    }
    

    @IBAction func click(_ sender: Any) {
        
        // display viewController with the simple present method
        let vc = FirstViewController()
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }

}
