//
//  ContentView.swift
//  WeatherApp
//
//  Created by Никита Андриянников on 11.02.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            BackgroundView(topColor: .blue, bottomColor: Color("lightBlue"))
            VStack {
                CityTextView(cityName: "Cupertino, CA")
                MainWeatherBodyView(imageName: "cloud.sun.fill", temperatureValue: 30)
                
                HStack(spacing: 25) {
                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "cloud.sun.fill",
                                   temperature: 25)
                    WeatherDayView(dayOfWeek: "WED",
                                   imageName: "smoke.fill",
                                   temperature: 20)
                    WeatherDayView(dayOfWeek: "THU",
                                   imageName: "cloud.drizzle.fill",
                                   temperature: 19)
                    WeatherDayView(dayOfWeek: "FRI",
                                   imageName: "wind",
                                   temperature: 23)
                    WeatherDayView(dayOfWeek: "SAT",
                                   imageName: "cloud.sun.fill",
                                   temperature: 27)
                }
                Spacer()
                
                Button {
                    print("tapped")
                } label: {
                    WeatherButton(buttonText: "Change Day Time", textColor: .blue, backgorundColor: .white)
                }
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]), startPoint: .topLeading,
                       endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}


struct CityTextView: View {
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}


struct MainWeatherBodyView: View {
    var imageName: String
    var temperatureValue: Int
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperatureValue)°")
                .font(.system(size: 70, weight: .bold))
                .foregroundColor(.white)
        }
        .padding(.bottom, 40)
    }
}


