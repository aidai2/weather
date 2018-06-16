//
//  TopViewController.swift
//  wheather
//
//  Created by ITLabAdmin on 6/14/18.
//  Copyright © 2018 ITLabAdmin. All rights reserved.
//

import UIKit

class TopViewController: UIViewController {

    @IBAction func sideBarButton(_ sender: Any) {
        if let cont = self.so_containerViewController{
            cont.isSideViewControllerPresented = true
        }
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
