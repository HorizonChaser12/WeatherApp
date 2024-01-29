import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/services/weather_service.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  // API key
  final _weatherService = WeatherService('577fb59713657a41f3e9c3a001b8ab66');
  Weather? _weather;

  // Fetch Weather
  _fetchWeather() async {
    // get the current city
    String cityName = await _weatherService.getCurrentCity();

    // get weather for city
    try {
      final weather = await _weatherService.getWeather(cityName);
      setState(() {
        _weather = weather;
      });
    }
    // Catch any error if there is.
    catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }

  // Get weather animation on behalf of the current weather
  String getWeatherAnimation(String? mainCondition) {
    if (mainCondition == null) {
      return 'assets/sunny.json';
    }
    switch (mainCondition.toLowerCase()) {
      case 'clouds':
        return 'assets/cloudy.json';
      case 'mist':
        return 'assets/weathermist.json';
      case 'thunder-rainy':
        return 'assets/thunderrainy.json';
      case 'night':
        return 'assets/weathernight.json';
      case 'haze':
        return 'assets/haze.json';
      default:
        return 'assets/sunny.json';
    }
  }

  // init state
  @override
  void initState() {
    super.initState();

    // fetch weather on startup
    _fetchWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // City name
            Text(
              _weather?.cityName ?? "Loading city..",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Lottie.asset(getWeatherAnimation(_weather?.mainCondition)),
            // Temperature
            Text('${_weather?.temperature.round()}°C',
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            // Weather Condition
            Text(_weather?.mainCondition ?? "",
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
