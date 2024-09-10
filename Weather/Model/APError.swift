//
//  APError.swift
//  Weather
//
//  Created by Janadilov Azamat on 10.09.2024.
//

import Foundation

enum APError: Error {
    case invalidURL
    case unableToComplete
    case invalidResponse
    case invalidData
}
