import 'package:_7_weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:_7_weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:_7_weather_app/screens/searchview.dart';
import 'package:_7_weather_app/widgets/noweather.dart';
import 'package:_7_weather_app/widgets/weatherwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              onPressed: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => Searchview()));
              },
              icon: Icon(Icons.search, color: Colors.white, size: 30),
            ),
          ),
        ],
      ),
      body: BlocBuilder<GetWeatherCubit, WeatherStates>(
        builder: (context, state) {
          if (state is NoWeatherState) {
            return Noweather();
          } else if (state is WeatherLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is WeatherLoadedState) {
            return DefaultWeatherScreen(weatherModel: state.weatherModel);
          } else {
            return Center(
              child: Text("There is an error please try again later"),
            );
          }
        },
      ),
    );
  }
}
