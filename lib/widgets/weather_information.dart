import 'package:api/models/weather_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class WeatherInformation extends StatelessWidget {
  const WeatherInformation({Key? key, required this.weatherName})
      : super(key: key);

  final WeatherName weatherName;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Image.network(
            'http://openweathermap.org/img/wn/${weatherName.weather.first.icon}@2x.png'),
        const SizedBox(height: 10),
        Text(
          'City: ${weatherName.name}',
          style: TextStyle(fontSize: 30),
        ),
        const SizedBox(height: 10),
        Text(
          'Weather Description: ${weatherName.weather.first.description}',
          style: TextStyle(fontSize: 20),
        ),
        const SizedBox(height: 10),
        Text(
          'Temperature: ${weatherName.main.temp}°C',
          style: TextStyle(fontSize: 20),
        ),
        const SizedBox(height: 10),
        Text(
          'Min Temperature: ${weatherName.main.tempMin}°C',
          style: TextStyle(fontSize: 20),
        ),
        const SizedBox(height: 10),
        Text(
          'Max Temperture: ${weatherName.main.tempMax}°C',
          style: TextStyle(fontSize: 20),
        ),
        const SizedBox(height: 10),
        Text(
          'Pressure: ${weatherName.main.pressure} Hg',
          style: TextStyle(fontSize: 20),
        ),
        const SizedBox(height: 10),
        Text(
          'Humidity: ${weatherName.main.humidity} g.kg-1',
          style: TextStyle(fontSize: 20),
        ),
        const SizedBox(height: 10),
        Text(
          'Wind Speed: ${weatherName.wind.speed} m/s',
          style: TextStyle(fontSize: 20),
        ),
        const SizedBox(height: 10),
        Text(
          'Wind Degree: ${weatherName.wind.deg} kt',
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
