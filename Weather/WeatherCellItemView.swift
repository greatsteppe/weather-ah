//
//  WeatherCellItemView.swift
//  Weather
//
//  Created by Janadilov Azamat on 21.08.2024.
//

import SwiftUI

struct WeatherCellItemView: View {

    var temp = ""
    var weekDay = ""
    var typeWeather = ""
    var image = "sun.max.fill"

    var body: some View {
        HStack {
            VStack {
                Text(weekDay)
                    .padding(16)
                    .padding(.bottom, 16)
                    .font(.title)
                    .foregroundStyle(.white)
                Text(typeWeather)
                    .foregroundStyle(.white)
            }
            .padding(8)

            Spacer()

            VStack {
                Image(systemName: image)
                    .foregroundStyle(.white)
                    .padding(16)
                    .padding(.bottom, 16)
                Text(temp)
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
