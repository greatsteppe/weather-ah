//
//  WeatherModel.swift
//  Weather
//
//  Created by Janadilov Azamat on 28.08.2024.
//

import Foundation

class WeatherModel: ObservableObject, Identifiable {

    var id = UUID()
    @Published var temp = "20"
    @Published var weekDay = "Monday"
    @Published var typeWeather = "sunny"
    @Published var image = "sun"

    init(id: UUID = UUID(), temp: String = "20", weekDay: String = "Monday", typeWeather: String = "sunny", image: String = "sun") {
        self.id = id
        self.temp = temp
        self.weekDay = weekDay
        self.typeWeather = typeWeather
        self.image = image
    }
}
