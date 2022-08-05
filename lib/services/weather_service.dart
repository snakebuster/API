import 'package:api/models/weather_model.dart';
import 'package:flutter/rendering.dart';
import 'package:http/http.dart' as http;

class WeatherService {
  Future<WeatherName> fetchWeatherInformation(String cityName) async {
    final String apiKey = '70bd87a8eddc12efebbd0f4838d908b4';
    final Uri url = Uri(
      scheme: 'https',
      host: 'api.openweathermap.org',
      path: 'data/2.5/weather',
      queryParameters: {'q': cityName, 'appId': apiKey, 'units': 'metric'},
    );

    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      return WeatherName.fromJson(response.body);
    } else {
      throw Exception('Failed to load weather information');
    }
  }
}
