import 'package:flutter/material.dart';

class WeatherTheme {
  final LinearGradient gradient;
  final String iconPath;

  WeatherTheme({required this.gradient, required this.iconPath});
}

WeatherTheme getWeatherTheme(String condition) {
  condition = condition.toLowerCase();

  if (condition.contains("sunny") || condition.contains("clear")) {
    return WeatherTheme(
      gradient: LinearGradient(
        colors: [Colors.orange, Colors.deepOrangeAccent],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
      iconPath: "assets/w/005-sun-3.png",
    );
  } else if (condition.contains("cloudy") || condition.contains("overcast")) {
    return WeatherTheme(
      gradient: LinearGradient(
        colors: [Colors.blueGrey.shade700, Colors.grey.shade500],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
      iconPath: "assets/w/cloudy.png",
    );
  } else if (condition.contains("rain") || condition.contains("shower")) {
    return WeatherTheme(
      gradient: LinearGradient(
        colors: [Colors.indigo, Colors.blueGrey],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
      iconPath: "assets/w/rain.png",
    );
  } else if (condition.contains("snow")) {
    return WeatherTheme(
      gradient: LinearGradient(
        colors: [Colors.lightBlue.shade100, Colors.white],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
      iconPath: "assets/w/snow.png",
    );
  } else if (condition.contains("thunder")) {
    return WeatherTheme(
      gradient: LinearGradient(
        colors: [Colors.deepPurple, Colors.black87],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
      iconPath: "assets/w/thunder.png",
    );
  } else {
    // Default
    return WeatherTheme(
      gradient: LinearGradient(
        colors: [Colors.blue, Colors.lightBlueAccent],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
      iconPath: "assets/w/cloudy.png", // default icon
    );
  }
}
