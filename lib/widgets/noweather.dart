import 'package:flutter/material.dart';

class Noweather extends StatelessWidget {
  const Noweather({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.lightBlue.shade300, Colors.lightBlue.shade100],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 70),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height / 3,
            ),
            child: Column(
              children: [
                Text(
                  "Hello , No Weather Data Found",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontFamily: 'Inter',
                  ),
                ),
                Text(
                  "Please Search for a City🔎",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
