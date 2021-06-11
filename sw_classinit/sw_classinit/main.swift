//
//  main.swift
//  sw_classinit
//
//  Created by Vcvc on 2021/6/11.
//

import Foundation

print("Start")

//class Celsius {
//    var temperatureInCelsius: Double
//    init(fromFahrenheit fahrenheit: Double) {
//        temperatureInCelsius = (fahrenheit - 32.0) / 1.8
//    }
//    init(fromKelvin kelvin: Double) {
//        temperatureInCelsius = kelvin - 273.15
//    }
//}
//
//let boilingPointOfWater = Celsius(fromFahrenheit: 212.0)
//print(boilingPointOfWater.temperatureInCelsius)
//// boilingPointOfWater.temperatureInCelsius 是 100.0
//let freezingPointOfWater = Celsius(fromKelvin: 273.15)
//print(freezingPointOfWater.temperatureInCelsius)
//// freezingPointOfWater.temperatureInCelsius 是 0.0

//class Color {
//    let red, green, blue: Double
//    init(red: Double, green: Double, blue: Double) {
//        self.red   = red
//        self.green = green
//        self.blue  = blue
//    }
//    init(white: Double) {
//        red   = white
//        green = white
//        blue  = white
//    }
//}
//
//let magenta = Color(red: 1.0, green: 0.0, blue: 1.0)
//let halfGray = Color(white: 0.5)
////let veryGreen = Color(0.0, 1.0, 0.0)
//// 报编译期错误-需要实参标签
//
//class SurveyQuestion {
//    var text: String
//    var response: String!
//    init(text: String) {
//        self.text = text
//    }
//    func ask() {
//        print(text)
//    }
//}
//
//let cheeseQuestion = SurveyQuestion(text: "Do you like cheese?")
//cheeseQuestion.ask()
//// 打印“Do you like cheese?”
//cheeseQuestion.response = "Yes, I do like cheese."
//print(cheeseQuestion.response)

class SurveyQuestion {
    let text: String
    var response: String?
    init(text: String) {
        self.text = text
    }
    func ask() {
        print(text)
    }
}
let beetsQuestion = SurveyQuestion(text: "How about beets?")
beetsQuestion.ask()
// 打印“How about beets?”
beetsQuestion.response = "I also like beets. (But not with cheese.)"
