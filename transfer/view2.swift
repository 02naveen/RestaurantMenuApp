//
//  view2.swift
//  transfer
//
//  Created by Student on 12/10/23.
//  Copyright © 2023 Student. All rights reserved.
//

import UIKit

class view2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var web: UIWebView!
    
    @IBAction func web1(_ sender: Any) {
        let myurl = URL(string: "https://www.youtube.com/watch?v=uxv6fu8angU")
        let request = URLRequest(url: myurl!)
        web.loadRequest(request)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
