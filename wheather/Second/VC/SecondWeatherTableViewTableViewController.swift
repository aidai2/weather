//
//  SecondWeatherTableViewTableViewController.swift
//  wheather
//
//  Created by ITLabAdmin on 6/16/18.
//  Copyright © 2018 ITLabAdmin. All rights reserved.
//

import UIKit
import Alamofire

class SecondWeatherTableViewTableViewController: WeatherTableViewController {
    
    var weather: Object?
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cityCell", for: indexPath) as! NameOfCityCellTableViewCell
        let city = cities[indexPath.row]
        cell.cityNameLabel.text = city.city
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let sb = UIStoryboard(name: "SecondProject", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "CityViewController") as! CityViewController
        if let weather = weather {
            
            //            vc.temp = weather.list[0].main.temp - 273
            vc.city = weather.city.name
            //            vc.date = weather.list[0].dt_txt
            //            vc.sky = weather.list[0].clouds.all
        }
        
        navigationController?.pushViewController(vc, animated: true)
        
    }

    override func viewDidLoad() {
        
        guard  let url = URL(string: "https://api.openweathermap.org/data/2.5/forecast?lat=42.874722&lon=74.612222&APPID=079587841f01c6b277a82c1c7788a6c3/") else { return }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
        guard  let data = data else { return }
        do {
            let decoder = JSONDecoder()
            let gitData = try decoder.decode(Object.self, from: data)
            print(gitData.city.name)
        }
        catch let err {
            print("Err", err)
            }
        }.resume()
        
//      let url = URL(string: "https://api.openweathermap.org/data/2.5/forecast?lat=42.874722&lon=74.612222&APPID=079587841f01c6b277a82c1c7788a6c3/")!
//        Alamofire.request(url).responseData { (responce) in
//
//            switch responce.result {
//            case .success:
//                do {
//                    guard let data = responce.data else { return }
//                    let w = try JSONDecoder().decode(Object.self, from: data)
//                    self.weather = w
//                    print("get weather")
//                } catch {
//                    print("FAIIIIL")
//                }
//                break
//            case .failure:
//                break
//            }
//        }
        super.viewDidLoad()
        
    }

    
}
