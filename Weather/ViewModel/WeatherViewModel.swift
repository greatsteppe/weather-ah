//
//  WeatherViewModel.swift
//  Weather
//
//  Created by Janadilov Azamat on 28.08.2024.
//

import Foundation

final class WeatherViewModel: ObservableObject {

    @Published var arrayWeatherModel: [WeatherModel] = []

    init() {
        loadWeather()
    }

    func loadWeather() {
        for _ in 1...5 {
            arrayWeatherModel.append(WeatherModel())
        }
    }
}
