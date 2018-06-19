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



//2-

struct Object: Decodable {
    var cod: String
    var message: Double
    var cnt: Int
    var list: [List2]
    var city: City
}

struct List2: Decodable {
    var dt: Int
    var main: Main2
    var clouds: Clouds
    var dt_txt: String
    }

struct City: Decodable {
    var id: Int
    var name: String
}

struct Main2: Decodable {
    var temp: Double
}

struct Clouds: Decodable {
    var all: Int
}











