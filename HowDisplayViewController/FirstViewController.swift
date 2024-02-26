//
//  FirstViewController.swift
//  HowDisplayViewController
//
//  Created by PATRICK LESAINT on 15/08/2019.
//  Copyright © 2019 PATRICK LESAINT. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet var clickButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.clickButton.layer.cornerRadius = self.clickButton.frame.height / 2
    }

    @IBAction func clickBtn(_ sender: UIButton) {

        
        // display the second viewController by using a (hidden) navigation controller
        let vc = SecondViewController()
        
        let nvc = UINavigationController(rootViewController: vc)
        nvc.isNavigationBarHidden = true
        nvc.modalPresentationStyle = .fullScreen
        self.present(nvc, animated: true, completion: nil)
    }
    
}
