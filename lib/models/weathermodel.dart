class WeatherModel {
  final String cityName;
  final double temp;
  final double minTemp;
  final double maxTemp;
  final String weatherCondition;
  final String image;
  final DateTime date;

  WeatherModel({
    required this.cityName,
    required this.temp,
    required this.minTemp,
    required this.maxTemp,
    required this.weatherCondition,
    required this.image,
    required this.date,
  });

  factory WeatherModel.fromJson(json) {
    return WeatherModel(
      cityName: json['location']['name'],
      date: DateTime.parse(json['current']['last_updated']),
      temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
      minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      weatherCondition:
          json['forecast']['forecastday'][0]['day']['condition']['text'],
      image: json['forecast']['forecastday'][0]['day']['condition']['icon'],
    );
  }
}
