//
//  WeatherButton.swift
//  WeatherApp
//
//  Created by Никита Андриянников on 11.02.2022.
//

import SwiftUI

struct WeatherButton: View {
    var buttonText: String
    var textColor: Color
    var backgorundColor: Color
    
    var body: some View {
        Text(buttonText)
            .frame(width: 280, height: 50)
            .background(backgorundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(15)
    }
}

