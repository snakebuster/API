import 'package:api/models/weather_model.dart';
import 'package:api/services/weather_service.dart';
import 'package:api/states/weather_state.dart';
import 'package:bloc/bloc.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(WeatherLoading());

  Future<void> fetchWeather(String cityName) async {
    WeatherService weatherService = WeatherService();
    emit(WeatherLoading());

    try {
      WeatherName weatherName =
          await weatherService.fetchWeatherInformation(cityName);
      emit(WeatherLoaded(weatherName: weatherName));
    } catch (e) {
      emit(WeatherError(errorMessage: e.toString()));
    }
  }
}
