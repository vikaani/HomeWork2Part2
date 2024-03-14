import UIKit

typealias Weather = (String, Double, Double, Double)

let kelvinZero = 273.15

let cityNames = ["Харків", "Київ", "Одеса", "Львів", "Чернігів", "Житомир", "Вінниця"]

var weatherInCities: [Weather] = []

for index in 0 ..< cityNames.count {
    let cityName = cityNames[index]
    let weatherInfo = Weather(
        city: cityName,
        temp: Double(arc4random() % 30) + kelvinZero,
        tempMin: Double(arc4random() % 30) + kelvinZero,
        tempMax: Double(arc4random() % 30) + kelvinZero
    )
    weatherInCities.append(weatherInfo)
}

print(weatherInCities)

for city in weatherInCities {
    let weatherInfo = city
    let city = weatherInfo.0
    let kelvin = weatherInfo.1
    let kelvinMin = weatherInfo.2
    let kelvinMax = weatherInfo.3
    
    let fahrenheit = kelvin * (9.0/5.0) - 459.67
    let celsius = kelvin - kelvinZero
    let fahrenheitMin = kelvinMin * (9.0/5.0) - 459.67
    let fahrenheitMax = kelvinMax * (9.0/5.0) - 459.67
    
    print("\n\(city):")
    print("t: \(celsius) C")
    print("t: \(String(format: "%.1f", fahrenheit)) F")
    print("min t: \(kelvinMin - kelvinZero) C / \(String(format: "%.1f", fahrenheitMin)) F")
    print("max t: \(kelvinMax - kelvinZero) C / \(String(format: "%.1f", fahrenheitMax)) F")
}
