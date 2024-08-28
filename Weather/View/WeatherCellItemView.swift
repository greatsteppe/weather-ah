//
//  WeatherCellItemView.swift
//  Weather
//
//  Created by Janadilov Azamat on 21.08.2024.
//

import SwiftUI

struct WeatherCellItemView: View {

    @ObservedObject var model: WeatherModel = WeatherModel()

    var body: some View {
        HStack {
            VStack {
                Text(model.weekDay)
                    .padding(16)
                    .padding(.bottom, 16)
                    .font(.title)
                    .foregroundStyle(.white)
                Text(model.typeWeather)
                    .foregroundStyle(.white)
            }
            .padding(8)

            Spacer()

            VStack {
                Image(model.image)
                    .foregroundStyle(.white)
                    .padding(16)
                    .padding(.bottom, 16)
                Text("\(model.temp) ℃")
                    .foregroundStyle(.white)
            }
            .padding(8)
        }
        .background(.purple)
        .cornerRadius(16)
        .padding(26)
    }
}

#Preview {
    WeatherCellItemView()
}
