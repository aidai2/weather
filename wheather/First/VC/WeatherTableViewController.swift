 //
//  WeatherTableViewController.swift
//  wheather
//
//  Created by ITLabAdmin on 6/6/18.
//  Copyright © 2018 ITLabAdmin. All rights reserved.
//

import UIKit

class WeatherTableViewController: UITableViewController {

    var cities = [Weather]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.tableFooterView = UIView()
        
        if let p = Bundle.main.path(forResource: "weather", ofType: "json") {
            do {
                let json = try JSONDecoder().decode([Weather].self, from: Data(contentsOf: URL(fileURLWithPath: p), options: .mappedIfSafe))

                cities = json
            } catch {
                
            }
        
    }
 }
    
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return cities.count
    }

        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WeatherCell", for: indexPath) as! WeatherCell
        let city = cities[indexPath.row]
        cell.cityLabel.text = city.city
        let temp = city.list[0].main.temp - 273
        cell.tempLabel.text = "\(temp)"
    
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        vc.city = cities[indexPath.row].city
        vc.temp = cities[indexPath.row].list[0].main.temp - 273
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70.0
    }
}
 
