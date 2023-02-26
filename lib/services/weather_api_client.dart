import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:openweather/models/weather_model.dart';

class WeatherApiClient {
  Future<Weather>? getCurrentWeather(String? location) async {
    var endpoint = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=c3f3d625fbaa18f90e5eae76ca2c7871&units=metric");

    var resposne = await http.get(endpoint);
    var body = jsonDecode(resposne.body);
    print(Weather.fromJson(body).cityName);
    return Weather.fromJson(body);
  }
}
