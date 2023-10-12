//
//  ViewController.swift
//  transfer
//
//  Created by Student on 12/10/23.
//  Copyright © 2023 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var L1: UITextField!
    
    @IBAction func uname(_ sender: Any) {
    }
    @IBOutlet weak var pass: UITextField!
    @IBAction func btnact(_ sender: Any) {
        if L1.text == "admin" &&
        pass.text == "admin1"
        {
            performSegue(withIdentifier: "View2", sender: nil)
        }
    }
}

