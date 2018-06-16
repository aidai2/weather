//
//  SideBar.swift
//  wheather
//
//  Created by ITLabAdmin on 6/14/18.
//  Copyright © 2018 ITLabAdmin. All rights reserved.
//

import UIKit
import SidebarOverlay

class SideBar: SOContainerViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let secondSB = UIStoryboard(name: "Second", bundle: nil)
        let sideVC = secondSB.instantiateViewController(withIdentifier: "SideViewController")
        sideViewController = sideVC
        
        let firstSB = UIStoryboard(name: "Second", bundle: nil)
        let topVC = firstSB.instantiateViewController(withIdentifier: "top")
        topViewController = topVC
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
}

