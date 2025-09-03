import 'package:_7_weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:_7_weather_app/models/weathermodel.dart';
import 'package:_7_weather_app/services/weatherservies.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GetWeatherCubit extends Cubit<WeatherStates> {
  GetWeatherCubit() : super(NoWeatherState());

  getWeather({required String cityName}) async {
    try {
      emit(WeatherLoading());
      WeatherModel? weatherModel = await WeatherServies(
        Dio(),
      ).getCurrentWeather(cityName: cityName);
      emit(WeatherLoadedState(weatherModel!));
    } catch (e) {
      emit(WeatherfailureState());
    }
  }
}
