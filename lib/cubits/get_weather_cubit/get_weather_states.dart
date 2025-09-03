import 'package:_7_weather_app/models/weathermodel.dart';

class WeatherStates {}

class NoWeatherState extends WeatherStates {}

class WeatherLoading extends WeatherStates {}

class WeatherLoadedState extends WeatherStates {
  final WeatherModel weatherModel;

  WeatherLoadedState(this.weatherModel);
}

class WeatherfailureState extends WeatherStates {}
