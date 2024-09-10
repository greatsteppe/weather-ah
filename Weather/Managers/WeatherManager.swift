//
//  WeatherManager.swift
//  Weather
//
//  Created by Janadilov Azamat on 28.08.2024.
//

import Foundation

class WeatherManager: NSObject {

    static let shared = WeatherManager()

    let weatherApi = "https://api.openweathermap.org/data/2.5/weather"

    private let apiKey = "0462bc0bb46b0da7660187dd34ff095c"

    private let units = "metric"

    public func CurrentWeatherData(completed: @escaping (Result<CurrentWeatherResponse, APError>) -> ()) {

        let params = ["lat": "\(51.169392)", "lon": "\(71.449074)", "units": "metric", "appid": "\(apiKey)"]

        var urlComponents = URLComponents(string: weatherApi)!

        urlComponents.queryItems = params.map { URLQueryItem(name: $0.key, value: $0.value) }

        let request = URLRequest(url: urlComponents.url!)

        let task = URLSession.shared.dataTask(with: request) { data, response, error in

            if let _ = error {
                completed(.failure(.unableToComplete))
            }

            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }

            guard let data = data else {
                completed(.failure(.invalidData))
                return
            }

            guard let mime = response.mimeType, mime == "application/json" else {
                completed(.failure(.invalidData))
                return
            }

            do {
                let decodedObject = try JSONDecoder().decode(CurrentWeatherResponse.self, from: data)
                completed(.success(decodedObject))
            } catch {
                completed(.failure(.invalidData))
            }

        }

        task.resume()
    }

}
