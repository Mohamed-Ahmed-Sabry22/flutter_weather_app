import 'dart:developer';

import 'package:_7_weather_app/models/weathermodel.dart';
import 'package:dio/dio.dart';

class WeatherServies {
  final Dio dio;

  WeatherServies(this.dio);
  final String baseUrl = 'https://api.weatherapi.com/v1';
  final String apiKey = 'a20c327b5c8e4076974203220252608';
  Future<WeatherModel?> getCurrentWeather({required String cityName}) async {
    try {
      Response response = await dio.get(
        '$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=#',
      );
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errorMassege =
          e.response?.data['error']['message'] ?? 'opps somthing went wrong';
      throw Exception(errorMassege);
    } catch (e) {
      log(e.toString());
      throw Exception('opps somthing went wrong');
    }
  }
}
