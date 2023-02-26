import 'package:flutter/material.dart';
import 'package:openweather/models/weather_model.dart';
import 'package:openweather/services/weather_api_client.dart';
import 'package:openweather/views/additional_information.dart';
import 'package:openweather/views/current_weather.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //API
  WeatherApiClient client = WeatherApiClient();
  Weather? data;

  Future<void> getData() async {
    data = await client.getCurrentWeather("Cayambe");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFf9f9f9),
        appBar: AppBar(
          backgroundColor: const Color(0xFFf9f9f9),
          elevation: 0.0,
          title: const Text(
            "Weather App",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
            color: Colors.black,
          ),
        ),
        body: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  currentWeather(Icons.wb_sunny_rounded, "${data!.temp}",
                      "${data!.cityName}"),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text(
                    "Informacion Adicional",
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.brown,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 20.0,
                  ),
                  //CREACION DE WIDGET INFORMACION ADICIONAL
                  additionalInformation("${data!.wind}", "${data!.humidity}",
                      "${data!.pressure}", "${data!.feels_like}"),
                ],
              );
            }
            return Container();
          },
        ));
  }
}
