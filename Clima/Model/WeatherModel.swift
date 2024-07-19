//
//  WeatherModel.swift
//  Clima
//
//  Created by 陈天宇 on 2024/7/18.
//  Copyright © 2024 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }
    
    var conditionName: String {
        switch conditionId {
        case 200...232:
            return "cloud.bolt.rain"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 701...781:
            return "wind"
        case 800:
            return "sun.min"
        case 801...804:
            return "cloud.sun"
        default:
            return ""
        }
    }
}
