//
//  ViewController.swift
//  tebleview
//
//  Created by Student on 19/10/23.
//  Copyright © 2023 Lovely Profesional University. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    var vlc: AVAudioPlayer!

        var category : [String] = ["Accounts", "Credit Card", "Loan"]
        var acc : [String] = ["Current", "Saving"]
        var cc : [String] = ["Domestic", "International", "Rupay"]
        var loan : [String] = ["Home Loan", "Car Loan", "Personal Loan"]
    func numberOfSections(in tableView: UITableView) -> Int {
        return category.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0
        {
            return acc.count
        }
        else if section == 1
        {
            return cc.count
        }
        else{
            return loan.count
        }

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellobj = tableView.dequeueReusableCell(withIdentifier: "c1", for: indexPath)
        var val = String()
        if indexPath.section == 0
        {
            val = acc[indexPath.row]
        }
        else if indexPath.section == 1
        {
            val = cc[indexPath.row]
        }
        else if indexPath.section == 2
        {
            val = loan[indexPath.row]
        }
        cellobj.textLabel?.text = val
        return cellobj
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return category[section]
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        var item = String()
        if indexPath.section==0
        {
            item = acc[indexPath.row]
        }
        
        var alt = UIAlertController(title: "Confirmation", message: "You have selected \(item)", preferredStyle: .alert)
        alt.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alt, animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        do{
            let song_url = Bundle.main.path(forResource: "Ram", ofType: "mp3")
            try vlc = AVAudioPlayer(contentsOf: NSURL(string: song_url!)as! URL)
            vlc.play()
        }
        catch{}
    }

    @IBAction func Pause(_ sender: Any) {
        vlc.stop()

    }
    @IBAction func Stop(_ sender: Any) {
        vlc.currentTime = 0
    }
    
    @IBAction func play(_ sender: Any) {
        vlc.play()
    }
}

