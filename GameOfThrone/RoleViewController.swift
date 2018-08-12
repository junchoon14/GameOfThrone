//
//  RoleViewController.swift
//  GameOfThrone
//
//  Created by Jason Hsu on 2018/8/12.
//  Copyright © 2018 junchoon. All rights reserved.
//

import UIKit

class RoleViewController: UIViewController {
    
    var role: Role?
    
    @IBOutlet weak var roleImageView: UIImageView!
    @IBOutlet weak var genderSegControl: UISegmentedControl!
    @IBOutlet weak var introLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        if let role = role {
            roleImageView.image = UIImage(named: role.image)
            introLabel.text = role.intro
            if role.gender == "M" {
                genderSegControl.selectedSegmentIndex = 0
            } else {
                genderSegControl.selectedSegmentIndex = 1
            }
        }
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
