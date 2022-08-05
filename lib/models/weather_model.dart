import 'package:meta/meta.dart';
import 'dart:convert';

class WeatherName {
  WeatherName({
    required this.weather,
    required this.base,
    required this.main,
    required this.visibility,
    required this.wind,
    required this.dt,
    required this.timezone,
    required this.id,
    required this.name,
    required this.cod,
  });

  final List<Weather> weather;
  final String base;
  final Main main;
  final int visibility;
  final Wind wind;
  final int dt;
  final int timezone;
  final int id;
  final String name;
  final int cod;

  factory WeatherName.fromJson(String str) =>
      WeatherName.fromMap(json.decode(str));

  factory WeatherName.fromMap(Map<String, dynamic> json) => WeatherName(
        weather:
            List<Weather>.from(json["weather"].map((x) => Weather.fromMap(x))),
        base: json["base"],
        main: Main.fromMap(json["main"]),
        visibility: json["visibility"],
        wind: Wind.fromMap(json["wind"]),
        dt: json["dt"],
        timezone: json["timezone"],
        id: json["id"],
        name: json["name"],
        cod: json["cod"],
      );

  Map<String, dynamic> toMap() => {
        "weather": List<dynamic>.from(weather.map((x) => x.toMap())),
        "base": base,
        "main": main.toMap(),
        "visibility": visibility,
        "wind": wind.toMap(),
        "dt": dt,
        "timezone": timezone,
        "id": id,
        "name": name,
        "cod": cod,
      };
}

class Main {
  Main({
    required this.temp,
    required this.feelsLike,
    required this.tempMin,
    required this.tempMax,
    required this.pressure,
    required this.humidity,
  });

  final double temp;
  final double feelsLike;
  final double tempMin;
  final double tempMax;
  final int pressure;
  final int humidity;

  factory Main.fromJson(String str) => Main.fromMap(json.decode(str));

  factory Main.fromMap(Map<String, dynamic> json) => Main(
        temp: json["temp"].toDouble(),
        feelsLike: json["feels_like"].toDouble(),
        tempMin: json["temp_min"].toDouble(),
        tempMax: json["temp_max"].toDouble(),
        pressure: json["pressure"],
        humidity: json["humidity"],
      );

  Map<String, dynamic> toMap() => {
        "temp": temp,
        "feels_like": feelsLike,
        "temp_min": tempMin,
        "temp_max": tempMax,
        "pressure": pressure,
        "humidity": humidity,
      };
}

class Weather {
  Weather({
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
  });

  final int id;
  final String main;
  final String description;
  final String icon;

  factory Weather.fromJson(String str) => Weather.fromMap(json.decode(str));

  factory Weather.fromMap(Map<String, dynamic> json) => Weather(
        id: json["id"],
        main: json["main"],
        description: json["description"],
        icon: json["icon"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "main": main,
        "description": description,
        "icon": icon,
      };
}

class Wind {
  Wind({
    required this.speed,
    required this.deg,
  });

  final double speed;
  final int deg;

  factory Wind.fromJson(String str) => Wind.fromMap(json.decode(str));

  factory Wind.fromMap(Map<String, dynamic> json) => Wind(
        speed: json["speed"].toDouble(),
        deg: json["deg"],
      );

  Map<String, dynamic> toMap() => {
        "speed": speed,
        "deg": deg,
      };
}
