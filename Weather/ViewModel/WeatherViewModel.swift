//
//  WeatherViewModel.swift
//  Weather
//
//  Created by Janadilov Azamat on 28.08.2024.
//

import Foundation

final class WeatherViewModel: ObservableObject {

    @Published var arrayWeatherModel: [WeatherModel] = []

    @Published var curWeather: CurrentWeatherResponse?

    let weatherManager = WeatherManager.shared

    init() {
        loadWeather()
        getCurrentWeather()
    }

    func loadWeather() {
        for _ in 1...5 {
            arrayWeatherModel.append(WeatherModel())
        }
    }

    func getCurrentWeather() {
        weatherManager.CurrentWeatherData(completed: { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let data):
                    // print("DEBUG: - - - current weather data: \(data)")
                    self.curWeather = data
                case .failure(let error):
                    print("DEBUG: - - - current weather eror: \(error)")
                }
            }
        })
    }


}
