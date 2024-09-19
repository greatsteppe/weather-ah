//
//  CityWeatherView.swift
//  Weather
//
//  Created by Janadilov Azamat on 19.09.2024.
//

import SwiftUI

struct CityWeatherView: View {

    @ObservedObject var model: WeatherModel = WeatherModel()

    var body: some View {

        VStack {

            Image(model.image)
                .resizable()
                .frame(width: 120, height: 120)
                .padding(.horizontal, 40)
                .padding(.vertical, 10)
                .padding(.top, 40)

            Text("Astana")
                .font(.title3)
                .foregroundStyle(.white)
                .padding(.vertical, 5)

            Text("\(model.temp) ℃")
                .font(.largeTitle)
                .foregroundStyle(.white)
                .padding(.horizontal, 40)

            Text(model.typeWeather)
                .foregroundStyle(.white)
                .padding(.vertical, 5)
                .padding(.bottom, 10)

        }
        .background(Color.indigo)
        .cornerRadius(30)
        .padding(26)
    }
}

#Preview {
    CityWeatherView()
}
