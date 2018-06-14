//
//  ViewController.swift
//  wheather
//
//  Created by ITLabAdmin on 6/7/18.
//  Copyright © 2018 ITLabAdmin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var tempLAbel: UILabel!
    
    var city = ""
    var temp = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        cityLabel.text = city
        tempLAbel.text = "\(temp)"
   }
}
