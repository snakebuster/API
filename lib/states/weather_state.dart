import 'package:api/models/weather_model.dart';

abstract class WeatherState {}

class WeatherLoading extends WeatherState {}

class WeatherLoaded extends WeatherState {
  final WeatherName weatherName;

  WeatherLoaded({required this.weatherName});
}

class WeatherError extends WeatherState {
  final String errorMessage;
  WeatherError({required this.errorMessage});
}
