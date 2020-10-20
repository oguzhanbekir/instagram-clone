//
//  SettingsViewController.swift
//  InstaCloneFirebase
//
//  Created by Oguzhan Bekir on 25.08.2020.
//  Copyright © 2020 Oguzhan Bekir. All rights reserved.
//

import UIKit
import Firebase

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logoutClicked(_ sender: Any) {
        
        do {
            try Auth.auth().signOut()
            performSegue(withIdentifier: "toViewController", sender: nil)
        } catch {
            print("Error")
        }
    }
    
}
