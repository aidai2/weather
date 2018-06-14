//
//  Weather.swift
//  wheather
//
//  Created by ITLabAdmin on 6/14/18.
//  Copyright © 2018 ITLabAdmin. All rights reserved.
//

import Foundation

struct Weather: Decodable {
    var list: [List]
    var city: String
}

struct List: Decodable {
    var dt: Int
    var main: Main
    
}

struct Main: Decodable {
    var temp: Double
}
