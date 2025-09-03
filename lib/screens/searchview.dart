import 'package:_7_weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Searchview extends StatelessWidget {
  const Searchview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 30,
        title: Text(
          "Search a City",
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back, color: Colors.white, size: 20),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.lightBlue.shade300, Colors.lightBlue.shade100],
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 70),
            Padding(
              padding: const EdgeInsets.only(top: 60, right: 30, left: 30),
              child: TextField(
                onSubmitted: (value) async {
                  var getWeatherCubit = BlocProvider.of<GetWeatherCubit>(
                    context,
                  );
                  getWeatherCubit.getWeather(
                    cityName: value,
                  ); //////////////////////// take care here
                  Navigator.pop(context);
                },
                cursorColor: Colors.white,
                style: TextStyle(color: Colors.white, fontSize: 16),
                decoration: InputDecoration(
                  labelText: "Search",
                  labelStyle: TextStyle(
                    color: const Color.fromARGB(174, 255, 255, 255),
                    fontSize: 16,
                  ),
                  hintText: "Enter City Name",
                  hintStyle: TextStyle(
                    color: const Color.fromARGB(174, 255, 255, 255),
                    fontSize: 14,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: const Color.fromARGB(174, 255, 255, 255),
                      size: 18,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white, width: 1),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
