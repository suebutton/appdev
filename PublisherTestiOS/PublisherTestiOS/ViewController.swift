//
//  ViewController.swift
//  PublisherTestiOS
//
//  Created by Sue Chung on 7/30/19.
//  Copyright © 2019 Sue Chung. All rights reserved.
//

import UIKit
import Button

class ViewController: UIViewController {

    @IBAction func loginButton(_ sender: Any) {
        performSegue(withIdentifier: "toMain", sender: self)
//        Button.user.setIdentifier("angelinaJolie")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

