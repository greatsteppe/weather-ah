//
//  ContentView.swift
//  Weather
//
//  Created by Janadilov Azamat on 21.08.2024.
//

import SwiftUI

struct ContentView: View {

    var vm = WeatherViewModel()

    var body: some View {
        VStack {
            Text("Astana")
                .font(.system(size: 48, weight: .bold))

            HStack {
                VStack {
                    Text("Today")
                        .padding(16)
                        .padding(.bottom, 16)
                        .font(.title)
                        .foregroundStyle(.white)
                    Text("Sunny")
                        .foregroundStyle(.white)
                }
                .padding(8)

                Spacer()

                VStack {
                    Image(systemName: "sun.max.fill")
                        .foregroundStyle(.white)
                        .padding(16)
                        .padding(.bottom, 16)
                    Text("20 ℃")
                        .foregroundStyle(.white)
                }
                .padding(8)
            }
            .background(.purple)
            .cornerRadius(16)
            .padding(26)

            HStack {
                Text("Forecast for 5 days")
                    .font(.system(size: 30, weight: .bold))
                Spacer()
            }
            .padding(.horizontal, 26)
            .padding(.top, 26)
            .padding(.bottom, 0)

            List(vm.arrayWeatherModel) { weather in
                WeatherCellItemView(model: weather)
                    .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
            .padding(.horizontal, -20)
            //.listRowSeparator(.hidden)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
