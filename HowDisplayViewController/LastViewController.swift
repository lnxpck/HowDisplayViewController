//
//  LastViewController.swift
//  HowDisplayViewController
//
//  Created by PATRICK LESAINT on 15/08/2019.
//  Copyright © 2019 PATRICK LESAINT. All rights reserved.
//

import UIKit

class LastViewController: UIViewController {

    @IBOutlet var popButton: UIButton!
    @IBOutlet var dismissButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.popButton.layer.cornerRadius = self.popButton.frame.height / 2
        self.dismissButton.layer.cornerRadius = self.dismissButton.frame.height / 2

    }

    @IBAction func dismiss(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func pop(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
