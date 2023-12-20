//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Mounika Padala on 18/12/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {

            BackgroundView(isNight: isNight)
            
            VStack{
                MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill",
                                                      temperature: 76)
                
                
                HStack(spacing: 20){
                    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 74)
                    WeatherDayView(dayOfWeek: "WED", imageName: "sun.max.fill", temperature: 70)
                    WeatherDayView(dayOfWeek: "THU", imageName: "wind.snow", temperature: 74)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "sunset.fill", temperature: 74)
                    WeatherDayView(dayOfWeek: "SAT", imageName: "snow", temperature: 74)
                    
                    
                }
            
            Spacer()
                Button{
//                    print("tapped")
                    isNight.toggle()
                } label: {
                    WeatherButton(title: "Change Day Time", textColor: .blue, backgroundColor: .white)
                }
                Spacer()
                
            }
            
        }
        
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    
    var dayOfWeek:String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 6){
            Text(dayOfWeek)
                .font(.system(size: 16,weight: .heavy,design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height:40)
            
            Text("\(temperature)°")
                .font(.system(size: 28 ,weight: .medium))
                .foregroundColor(.white)
            
        }
       
    }
}

struct BackgroundView: View {
    
    var isNight: Bool
    
    var body: some View {
        //            Color(.blue).edgesIgnoringSafeArea(.all)
        LinearGradient(gradient: Gradient(colors: [Color.blue, Color("lightBlue"),]), startPoint: .topLeading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all)
    }
}

struct MainWeatherStatusView: View {
    var imageName: String
    var temperature: Int
    
    var body: some View {
        Text("Cupertino, CA").font(.system(size: 32, weight: .medium,design: .default))
            .foregroundStyle(.white)
            .padding()
        
        VStack(spacing: 10){
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)°")
                .font(.system(size: 70 ,weight: .medium))
                .foregroundColor(.white)
            
        }
        .padding(.bottom,40)
        
    }
}

//struct WeatherButton: View {
//        var title: String
//        var textColor: Color
//        var backgroundColor: Color
//    
//    var body: some View {
//        Text("Change Day Time")
//            .frame(width: 280, height: 50)
//            .background(Color.white)
//            .font(.system(size: 20, weight: .bold, design: .default))
//            .cornerRadius(10)
//    }
//}
