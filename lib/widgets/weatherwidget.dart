import 'package:_7_weather_app/models/weathermodel.dart';
import 'package:_7_weather_app/services/weathertheme.dart';
import 'package:flutter/material.dart';

class DefaultWeatherScreen extends StatelessWidget {
  const DefaultWeatherScreen({super.key, required this.weatherModel});
  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    final theme = getWeatherTheme(weatherModel.weatherCondition);
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(gradient: theme.gradient),
      child: Column(
        children: [
          SizedBox(height: 120),
          Text(
            weatherModel.cityName,
            style: TextStyle(
              color: Colors.white,
              fontSize: 34,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Last Updated at ${weatherModel.date.hour} : ${weatherModel.date.minute}",
            style: TextStyle(
              color: const Color.fromARGB(206, 255, 255, 255),
              fontSize: 14,
            ),
          ),
          SizedBox(height: 40),
          Image.asset("${theme.iconPath}", height: 150, width: 150),
          SizedBox(height: 20),
          Text(
            " ${weatherModel.temp}°",
            style: TextStyle(
              color: Colors.white,
              fontSize: 90,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            weatherModel.weatherCondition,
            style: TextStyle(
              color: const Color.fromARGB(206, 255, 255, 255),
              fontSize: 25,
            ),
          ),
          //SizedBox(height: 40),
          Container(
            margin: EdgeInsets.only(top: 40, bottom: 20),
            padding: EdgeInsets.only(top: 20, bottom: 20, left: 50, right: 50),
            decoration: BoxDecoration(
              color: const Color.fromARGB(19, 0, 0, 0),
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: Color.fromARGB(255, 255, 255, 255),
                width: 0.3,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "TODAY'S RANGE",
                  style: TextStyle(
                    color: const Color.fromARGB(206, 255, 255, 255),
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Min",
                            style: TextStyle(
                              color: const Color.fromARGB(206, 255, 255, 255),
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            " ${weatherModel.minTemp.round()}°",
                            style: TextStyle(color: Colors.white, fontSize: 26),
                          ),
                        ],
                      ),
                      VerticalDivider(
                        indent: 10,
                        endIndent: 20,
                        color: Colors.white,
                        thickness: 0.4,
                        width: 80,
                      ),
                      Column(
                        children: [
                          Text(
                            "Max",
                            style: TextStyle(
                              color: const Color.fromARGB(206, 255, 255, 255),
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            " ${weatherModel.maxTemp.round()}°",
                            style: TextStyle(color: Colors.white, fontSize: 26),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
