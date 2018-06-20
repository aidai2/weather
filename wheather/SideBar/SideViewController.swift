//
//  ViewController.swift
//  wheather
//
//  Created by ITLabAdmin on 6/14/18.
//  Copyright © 2018 ITLabAdmin. All rights reserved.
//

import UIKit


class SideViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var projects = ["JSON", "Alamofire", " Проекты"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return projects.count
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    

        
    }
    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = projects[indexPath.row]
        cell.textLabel?.textColor = UIColor(red: 60.0/255, green: 91.0/255, blue: 109.0/255, alpha: 1.0)
        
//        cell.backgroundColor = UIColor(red:230.0/255 , green:230.0/255 , blue:230.0/255, alpha:0.1 )
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
            
        case 2:
            
            let sb = UIStoryboard(name: "Second", bundle: nil)
            let vc = sb.instantiateViewController(withIdentifier: "top")
            so_containerViewController?.topViewController = vc
            so_containerViewController?.isSideViewControllerPresented = false
            break
        default:
            break
        }
    }

    
   
    


   
}
