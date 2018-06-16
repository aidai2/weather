//
//  ViewController.swift
//  wheather
//
//  Created by ITLabAdmin on 6/14/18.
//  Copyright © 2018 ITLabAdmin. All rights reserved.
//

import UIKit


class SideViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var projects = ["JSON", "Alamofire"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return projects.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = projects[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let vc = sb.instantiateViewController(withIdentifier: "navigation")
            so_containerViewController?.topViewController = vc
            so_containerViewController?.isSideViewControllerPresented = false
            break
        
        case 1:
            let sb = UIStoryboard(name: "SecondProject", bundle: nil)
            let vc = sb.instantiateViewController(withIdentifier: "SecondWeatherTableViewController")
            so_containerViewController?.topViewController = vc
            so_containerViewController?.isSideViewControllerPresented = false
            break
        default:
            break
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    


   
}
