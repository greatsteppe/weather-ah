//
//  WeatherDetailView.swift
//  Weather
//
//  Created by Janadilov Azamat on 19.09.2024.
//

import SwiftUI

struct WeatherDetailView: View {

    var array: [WeatherModel] = Array(repeating: WeatherModel(), count: 5)

    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(array) { item in
                    CityWeatherView(model: item)
                        .containerRelativeFrame(.horizontal, count: 1, spacing: 10)
                        .scrollTransition {
                            content, phase in
                            content
                                .opacity(phase.isIdentity ? 1 : 0)
                                .scaleEffect(x: phase.isIdentity ? 1 : 0.3)
                                .offset(y: phase.isIdentity ? 0 : 50)
                        }
                }
            }
        }
        .contentMargins(5, for: .scrollContent)
        .scrollTargetBehavior(.paging)
    }
}

#Preview {
    WeatherDetailView()
}
