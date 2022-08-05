import 'package:api/states/weather_cubit.dart';
import 'package:api/states/weather_state.dart';
import 'package:api/widgets/weather_information.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeatherDetail extends StatelessWidget {
  const WeatherDetail({Key? key, required this.cityName}) : super(key: key);
  final String cityName;

  @override
  Widget build(BuildContext context) {
    WeatherCubit cubit = BlocProvider.of<WeatherCubit>(context)
      ..fetchWeather(cityName);

    return Scaffold(
      backgroundColor: Colors.red[200],
      appBar: AppBar(
        title: const Text('Weather Detail'),
      ),
      body: Center(
        child: BlocBuilder<WeatherCubit, WeatherState>(
            bloc: BlocProvider.of<WeatherCubit>(context),
            builder: (context, state) {
              if (state is WeatherLoading) {
                return const CircularProgressIndicator();
              } else if (state is WeatherLoaded) {
                return WeatherInformation(weatherName: state.weatherName);
              } else {
                return Text(state is WeatherError ? state.errorMessage : '');
              }
            }),
      ),
    );
  }
}
